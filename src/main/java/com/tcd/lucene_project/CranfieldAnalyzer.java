package com.tcd.lucene_project;

import java.io.BufferedReader;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.CharArraySet;
import org.apache.lucene.analysis.WordlistLoader;
import org.apache.lucene.analysis.core.SimpleAnalyzer;
import org.apache.lucene.analysis.core.StopAnalyzer;
import org.apache.lucene.analysis.core.WhitespaceAnalyzer;
import org.apache.lucene.analysis.custom.CustomAnalyzer;
import org.apache.lucene.analysis.en.EnglishAnalyzer;
import org.apache.lucene.analysis.standard.StandardAnalyzer;

public class CranfieldAnalyzer {

    private Analyzer analyzer;

    public CranfieldAnalyzer(String chosenAnalyzer, String stopwordsPath) {
        try {
            boolean isChosenAnalyzerNull = chosenAnalyzer == null;
            BufferedReader reader = null;
            CharArraySet stopwords = null;

            if (stopwordsPath == null) {
                stopwordsPath = "resources/stopwords.txt";
            }
            String directory = stopwordsPath.substring(0, stopwordsPath.lastIndexOf("/")) + "/";
            String file = stopwordsPath.substring(stopwordsPath.lastIndexOf("/")+1);

            reader = Files.newBufferedReader(Paths.get(stopwordsPath), StandardCharsets.UTF_8);
            stopwords = WordlistLoader.getWordSet(reader);

            if (!isChosenAnalyzerNull && chosenAnalyzer.equals("1")) {
                this.analyzer = new StandardAnalyzer(stopwords);
            } else if (!isChosenAnalyzerNull && chosenAnalyzer.equals("2")) {
                this.analyzer = new StopAnalyzer(stopwords);
            } else if (!isChosenAnalyzerNull && chosenAnalyzer.equals("3")) {
                this.analyzer = new SimpleAnalyzer();
            } else if (!isChosenAnalyzerNull && chosenAnalyzer.equals("4")) {
                this.analyzer = new WhitespaceAnalyzer();
            } else if (!isChosenAnalyzerNull && chosenAnalyzer.equals("5")) {
                this.analyzer = new EnglishAnalyzer(stopwords);
            } else {
                this.analyzer =  CustomAnalyzer.builder(Paths.get(directory))
                    .withTokenizer("standard")
                    .addTokenFilter("lowercase")
                    .addTokenFilter("stop", "ignoreCase", "true", "words", file, "format", "wordset")
                    .addTokenFilter("trim")
                    .addTokenFilter("patternReplace",
                            "pattern", "^\\s\\.\\s$",
                            "replace", "all",
                            "replacement", " "
                    )
                    .addTokenFilter("snowballPorter")
                    .build();
            }
            
            reader.close();
        } catch (IOException e) {
            System.out.println("Please specify a vaild words file using the using the -stopwords parameter if not specified a default set of stopwords will be defined.");
            System.exit(1);
        }
        

    }


    public Analyzer getAnalyzer() {
        return analyzer;
    }

}
