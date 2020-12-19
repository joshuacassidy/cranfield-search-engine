package com.tcd.lucene_project;

import java.io.BufferedReader;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.StringField;
import org.apache.lucene.document.TextField;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.index.IndexWriterConfig.OpenMode;
import org.apache.lucene.index.Term;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;

public class IndexDocuments {

    private Path documentsDirectory;
    private boolean createIndex;
    private Analyzer analyzer;
    private IndexWriterConfig indexWriterConfig;
    private String indexPath;
    private IndexWriter writer;
    private String chosenAnalyzer;    
    private String stopwordsPath;


    public IndexDocuments(String dataPath, String indexPath, boolean createIndex, String chosenAnalyzer, String stopwordsPath) throws IOException {
        this.indexPath= indexPath;
        this.stopwordsPath= stopwordsPath;
        this.createIndex = createIndex;
        this.documentsDirectory = Paths.get(dataPath);
        this.chosenAnalyzer = chosenAnalyzer;
        
    }


    public void index() throws IOException {
        try {
            
            this.analyzer = new CranfieldAnalyzer(this.chosenAnalyzer, this.stopwordsPath).getAnalyzer();
            this.indexWriterConfig = new IndexWriterConfig(this.analyzer);
            if(this.createIndex) {
                this.indexWriterConfig.setOpenMode(OpenMode.CREATE);
            } else{ 
                this.indexWriterConfig.setOpenMode(OpenMode.CREATE_OR_APPEND);
            }

            Directory indexSaveDirectory = FSDirectory.open(Paths.get(this.indexPath));
            this.writer = new IndexWriter(indexSaveDirectory, indexWriterConfig);
            boolean isDirectory = Files.isDirectory(this.documentsDirectory);
            SimpleFileVisitor<Path> fileVisitor = new SimpleFileVisitor<Path>() {
                @Override
                    public FileVisitResult visitFile(Path document, BasicFileAttributes attrs) throws IOException {
                        try {
                            extractDocumentsFromFile(document);
                        } catch (Exception e) {}
                        return FileVisitResult.CONTINUE;
                    }
            };
            if(isDirectory) {
                Files.walkFileTree(this.documentsDirectory, fileVisitor);
            } else {
                extractDocumentsFromFile(this.documentsDirectory);
            }

            this.writer.close();
            indexSaveDirectory.close();
            analyzer.close();
        } catch (IOException e) {
            System.out.println("Please specify a vaild collection of documents (can be a file or folder) using the using the -data and a location to store the index using the -index parameter");
            System.exit(1);
       }
    }

    public void addDocumentProperty(Document document, String documentType, String documentContents) {
        Field field;
        if(documentType.equals("Document")) {
            field = new StringField(documentType, documentContents, Field.Store.YES);
        } else {
            field = new TextField(documentType, documentContents, Field.Store.YES);
        }
        document.add(field);
    }

    public void indexDocument(Document document, Path file) throws IOException {
        if(document != null) {
            if (this.createIndex) {
                writer.addDocument(document);
            } else {
                writer.updateDocument(new Term("file", file.toString()), document);
            }
        }
    }

    public void extractDocumentsFromFile(Path file) throws IOException {
        BufferedReader reader = Files.newBufferedReader(file, StandardCharsets.UTF_8);
        Document document = null;
        String documentType = "";
        for(String line = reader.readLine(); line != null; line = reader.readLine()) {
            if(line.startsWith(".I")) {
                System.out.println("Indexing " + file.toString() + " " + line);
                indexDocument(document, file);
                document = new Document();
                documentType = "Document";
                addDocumentProperty(document, documentType, line);
            } else if (line.startsWith(".T")) {
                documentType = "Title";
            } else if (line.startsWith(".A")) {
                documentType = "Author";
            } else if (line.startsWith(".B")) {
                documentType = "Bibliography";
            } else if (line.startsWith(".W")) {
                documentType = "Content";
            } else {
                addDocumentProperty(document, documentType, line);
            }
        }

        indexDocument(document, file);
        reader.close();

    }
}

// Parameters for the program to run
//-index /Users/owner/Desktop/ir-project/lucene_project/index -docs /Users/owner/Desktop/ir-project/lucene_project/data/cran.all.1400
//-index /Users/stejasmunees/Downloads/lucene-8.4.1/index -queries /Users/stejasmunees/Downloads/lucene-8.4.1/cran/cran.qry -raw 1 -field contents