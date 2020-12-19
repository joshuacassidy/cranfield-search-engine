package com.tcd.lucene_project;

public class SearchEngineMain {
    public static void main( String[] args ) throws Exception {
        String dataPath = null;
        String indexPath = null;
        boolean createIndex = true;
        String scoringApproach = "0";
        String stopwordsPath = null;
        String output = null;
        String queriesFile = null;
        String chosenAnalyzer = "0";
        
        for(int i = 0; i < args.length; i++) {
            switch(args[i]) { 
                case "-data":
                    i++;
                    dataPath = args[i];
                    break; 
                case "-index": 
                    i++;
                    indexPath = args[i];
                    break; 
                case "-createIndex": 
                    i++;
                    createIndex = "1".equals(args[i]);
                    break; 
                case "-stopwords":
                    i++;
                    stopwordsPath = args[i];
                    break; 
                case "-scoringApproach":
                    i++;
                    scoringApproach = args[i];
                    break;
                case "-output":
                    i++;
                    output = args[i];
                    break;
                case "-queriesFile":
                    i++;
                    queriesFile = args[i];
                    break; 
                case "-chosenAnalyzer":
                    i++;
                    chosenAnalyzer = args[i];
                    break; 
            }
        }

        boolean indexDocuments = dataPath != null && indexPath != null;
        boolean queryDocuments = queriesFile != null && output != null && indexPath != null;

        if(dataPath != null && indexPath != null) {
            IndexDocuments indexDocs = new IndexDocuments(dataPath, indexPath, createIndex, chosenAnalyzer, stopwordsPath);
            indexDocs.index();
            System.out.println("Completed indexing documents storing found in " + dataPath + " in " + indexPath);
        }

        if(queriesFile != null && output != null && indexPath != null) {
           SearchIndex searchIndex = new SearchIndex(indexPath, scoringApproach, chosenAnalyzer, stopwordsPath);
           searchIndex.searchQueryFile(queriesFile, output);
           System.out.println("Completed querying the index stored in " + indexPath + " using the  " + queriesFile + " queries file.\nThe results of these queries are stored in " + output);

        }

        String usage = "\nUsage: java -jar target/lucene_project-1.0-SNAPSHOT.jar " +
                "-data [dataset_location] -index [index_location] -createIndex [createIndex] " + 
                "-scoringApproach [scoringApproach] -output [output] -queriesFile [queriesFile] " +
                "-chosenAnalyzer [chosenAnalyzer]\n" +
                "-data: Location of dataset that is to be inserted into the index used with the -index parameter\n" +
                "-index: Location of where to create the index where the data will be indexed used with the -data parameter\n" +
                "-queriesFile: Location of the test queries file to be used to query the search engine used with the -output parameter\n" +
                "-output: Location of where to store the output of the trec_eval used with the -queriesFile parameter\n" +
                "-createIndex: By default will create a new index or 1 can be specified to create a index 0 or any other value to update an existing index. (Optional parameter)\n" +
                "-scoringApproach: By default BM25 is used or can be used by specifying 0, 1 for TF-IDF, 2 for LM Dirichlet, 3 for Boolean, 4 for LMJelinekMercer, 5 for AxiomaticF3LOG, or 6 for DFI (Optional parameter)\n" +
                "-chosenAnalyzer: By default a custom analyzer that uses Snowball stemming, 1 for the Standard Analyzer, 2 for Stop Analyzer, 3 for Simple Analyzer, 4 for Whitespace Analyzer, 5 for English Analyzer (Optional parameter)\n" +
                "-stopwords: Location to a file containing a list of custom stop words to use if null the search engine will use lucenes default set of stopwords (Optional parameter)\n";

        if(!indexDocuments && !queryDocuments){
            System.out.println(usage);
        }
        
    }
    
}
