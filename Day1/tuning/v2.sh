icc -qopenmp -O2 -g -parallel-source-info=2 ompprimev2.c -o ompprimev2
vtune -collect hotspots -result-dir vtune_datav2 ./ompprimev2
vtune -report summary -result-dir vtune_datav2 -format html -report-output summaryv2.html
