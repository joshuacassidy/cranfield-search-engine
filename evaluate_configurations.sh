#!/bin/bash

mvn package


java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/BM25Similarity_Custom.txt -queriesFile data/cran.qry -scoringApproach 0 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 0
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/BM25Similarity_StandardAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 0 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 1
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/BM25Similarity_StopAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 0 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 2
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/BM25Similarity_SimpleAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 0 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 3
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/BM25Similarity_WhitespaceAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 0 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 4
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/BM25Similarity_EnglishAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 0 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 5


java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/ClassicSimilarity_Custom.txt -queriesFile data/cran.qry -scoringApproach 1 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 0
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/ClassicSimilarity_StandardAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 1 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 1
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/ClassicSimilarity_EnglishAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 1 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 5
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/ClassicSimilarity_StopAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 1 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 2
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/ClassicSimilarity_SimpleAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 1 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 3
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/ClassicSimilarity_WhitespaceAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 1 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 4



java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/LMDirichletSimilarity_Custom.txt -queriesFile data/cran.qry -scoringApproach 2 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 0
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/LMDirichletSimilarity_StandardAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 2 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 1
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/LMDirichletSimilarity_EnglishAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 2 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 5
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/LMDirichletSimilarity_StopAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 2 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 2
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/LMDirichletSimilarity_SimpleAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 2 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 3
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/LMDirichletSimilarity_WhitespaceAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 2 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 4


java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/BooleanSimilarity_Custom.txt -queriesFile data/cran.qry -scoringApproach 3 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 0
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/BooleanSimilarity_StandardAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 3 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 1
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/BooleanSimilarity_EnglishAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 3 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 5
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/BooleanSimilarity_StopAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 3 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 2
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/BooleanSimilarity_SimpleAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 3 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 3
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/BooleanSimilarity_WhitespaceAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 3 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 4


java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/LMJelinekMercerSimilarity_Custom.txt -queriesFile data/cran.qry -scoringApproach 4 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 0
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/LMJelinekMercerSimilarity_StandardAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 4 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 1
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/LMJelinekMercerSimilarity_EnglishAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 4 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 5
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/LMJelinekMercerSimilarity_StopAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 4 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 2
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/LMJelinekMercerSimilarity_SimpleAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 4 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 3
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/LMJelinekMercerSimilarity_WhitespaceAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 4 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 4

java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/AxiomaticF3LOG_Custom.txt -queriesFile data/cran.qry -scoringApproach 5 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 0
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/AxiomaticF3LOG_StandardAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 5 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 1
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/AxiomaticF3LOG_EnglishAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 5 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 5
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/AxiomaticF3LOG_StopAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 5 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 2
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/AxiomaticF3LOG_SimpleAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 5 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 3
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/AxiomaticF3LOG_WhitespaceAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 5 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 4


java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/DFISimilarity_Custom.txt -queriesFile data/cran.qry -scoringApproach 6 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 0
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/DFISimilarity_StandardAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 6 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 1
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/DFISimilarity_EnglishAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 6 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 5
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/DFISimilarity_StopAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 6 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 2
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/DFISimilarity_SimpleAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 6 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 3
java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400 -output output/DFISimilarity_WhitespaceAnalyzer.txt -queriesFile data/cran.qry -scoringApproach 6 -createIndex 1 -stopwords resources/stopwords.txt -chosenAnalyzer 4


./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1 ./data/QRelsCorrectedforTRECeval ./output/BM25Similarity_Custom.txt > trec_eval_results/BM25Similarity_Custom.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/BM25Similarity_StandardAnalyzer.txt > trec_eval_results/BM25Similarity_StandardAnalyzer.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/BM25Similarity_EnglishAnalyzer.txt > trec_eval_results/BM25Similarity_EnglishAnalyzer.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/BM25Similarity_StopAnalyzer.txt > trec_eval_results/BM25Similarity_StopAnalyzer.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/BM25Similarity_SimpleAnalyzer.txt > trec_eval_results/BM25Similarity_SimpleAnalyzer.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/BM25Similarity_WhitespaceAnalyzer.txt > trec_eval_results/BM25Similarity_WhitespaceAnalyzer.txt

./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/ClassicSimilarity_Custom.txt > ./trec_eval_results/ClassicSimilarity_Custom.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/ClassicSimilarity_StandardAnalyzer.txt > ./trec_eval_results/ClassicSimilarity_StandardAnalyzer.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/ClassicSimilarity_EnglishAnalyzer.txt > ./trec_eval_results/ClassicSimilarity_EnglishAnalyzer.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/ClassicSimilarity_StopAnalyzer.txt > ./trec_eval_results/ClassicSimilarity_StopAnalyzer.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/ClassicSimilarity_SimpleAnalyzer.txt > ./trec_eval_results/ClassicSimilarity_SimpleAnalyzer.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/ClassicSimilarity_WhitespaceAnalyzer.txt > ./trec_eval_results/ClassicSimilarity_WhitespaceAnalyzer.txt

./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/LMDirichletSimilarity_Custom.txt > ./trec_eval_results/LMDirichletSimilarity_Custom.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/LMDirichletSimilarity_StandardAnalyzer.txt > ./trec_eval_results/LMDirichletSimilarity_StandardAnalyzer.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/LMDirichletSimilarity_EnglishAnalyzer.txt > ./trec_eval_results/LMDirichletSimilarity_EnglishAnalyzer.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/LMDirichletSimilarity_StopAnalyzer.txt > ./trec_eval_results/LMDirichletSimilarity_StopAnalyzer.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/LMDirichletSimilarity_SimpleAnalyzer.txt > ./trec_eval_results/LMDirichletSimilarity_SimpleAnalyzer.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/LMDirichletSimilarity_WhitespaceAnalyzer.txt > ./trec_eval_results/LMDirichletSimilarity_WhitespaceAnalyzer.txt

./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/BooleanSimilarity_Custom.txt > ./trec_eval_results/BooleanSimilarity_Custom.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/BooleanSimilarity_StandardAnalyzer.txt > ./trec_eval_results/BooleanSimilarity_StandardAnalyzer.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/BooleanSimilarity_EnglishAnalyzer.txt > ./trec_eval_results/BooleanSimilarity_EnglishAnalyzer.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/BooleanSimilarity_StopAnalyzer.txt > ./trec_eval_results/BooleanSimilarity_StopAnalyzer.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/BooleanSimilarity_SimpleAnalyzer.txt > ./trec_eval_results/BooleanSimilarity_SimpleAnalyzer.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/BooleanSimilarity_WhitespaceAnalyzer.txt > ./trec_eval_results/BooleanSimilarity_WhitespaceAnalyzer.txt

./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/LMJelinekMercerSimilarity_Custom.txt > ./trec_eval_results/LMJelinekMercerSimilarity_Custom.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/LMJelinekMercerSimilarity_StandardAnalyzer.txt > ./trec_eval_results/LMJelinekMercerSimilarity_StandardAnalyzer.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/LMJelinekMercerSimilarity_EnglishAnalyzer.txt > ./trec_eval_results/LMJelinekMercerSimilarity_EnglishAnalyzer.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/LMJelinekMercerSimilarity_StopAnalyzer.txt > ./trec_eval_results/LMJelinekMercerSimilarity_StopAnalyzer.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/LMJelinekMercerSimilarity_SimpleAnalyzer.txt > ./trec_eval_results/LMJelinekMercerSimilarity_SimpleAnalyzer.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/LMJelinekMercerSimilarity_WhitespaceAnalyzer.txt > ./trec_eval_results/LMJelinekMercerSimilarity_WhitespaceAnalyzer.txt

./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/AxiomaticF3LOG_Custom.txt > ./trec_eval_results/AxiomaticF3LOG_Custom.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/AxiomaticF3LOG_StandardAnalyzer.txt > ./trec_eval_results/AxiomaticF3LOG_StandardAnalyzer.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/AxiomaticF3LOG_EnglishAnalyzer.txt > ./trec_eval_results/AxiomaticF3LOG_EnglishAnalyzer.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/AxiomaticF3LOG_StopAnalyzer.txt > ./trec_eval_results/AxiomaticF3LOG_StopAnalyzer.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/AxiomaticF3LOG_SimpleAnalyzer.txt > ./trec_eval_results/AxiomaticF3LOG_SimpleAnalyzer.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/AxiomaticF3LOG_WhitespaceAnalyzer.txt > ./trec_eval_results/AxiomaticF3LOG_WhitespaceAnalyzer.txt

./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/DFISimilarity_Custom.txt > ./trec_eval_results/DFISimilarity_Custom.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/DFISimilarity_StandardAnalyzer.txt > ./trec_eval_results/DFISimilarity_StandardAnalyzer.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/DFISimilarity_EnglishAnalyzer.txt > ./trec_eval_results/DFISimilarity_EnglishAnalyzer.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/DFISimilarity_StopAnalyzer.txt > ./trec_eval_results/DFISimilarity_StopAnalyzer.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/DFISimilarity_SimpleAnalyzer.txt > ./trec_eval_results/DFISimilarity_SimpleAnalyzer.txt
./trec_eval-9.0.7/trec_eval -m map -m P.5,10 -m recall.5,10 -m iprec_at_recall.0.00,0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1  ./data/QRelsCorrectedforTRECeval ./output/DFISimilarity_WhitespaceAnalyzer.txt > ./trec_eval_results/DFISimilarity_WhitespaceAnalyzer.txt


 