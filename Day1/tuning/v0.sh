icc -qopenmp -O2 -g -parallel-source-info=2 ompprimev0.c -o ompprimev0
vtune -collect hotspots -result-dir vtune_datav0 ./ompprimev0
vtune -report summary -result-dir vtune_datav0 -format html -report-output summaryv0.html
