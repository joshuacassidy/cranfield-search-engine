#!/bin/bash

mvn package

java -jar target/lucene_project-1.0-SNAPSHOT.jar -output output/BM25Similarity_Custom.txt -queriesFile data/cran.qry -index index
