#!/bin/bash
mvn package

java -jar target/lucene_project-1.0-SNAPSHOT.jar -index index -data data/cran.all.1400
