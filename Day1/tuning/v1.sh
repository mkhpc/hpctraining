icc -qopenmp -O2 -g -parallel-source-info=2 ompprimev1.c -o ompprimev1
vtune -collect hotspots -result-dir vtune_datav1 ./ompprimev1
vtune -report summary -result-dir vtune_datav1 -format html -report-output summaryv1.html
