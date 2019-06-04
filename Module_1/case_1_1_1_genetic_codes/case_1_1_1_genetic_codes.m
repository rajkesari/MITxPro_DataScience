str=LoadSeq('ccrescentus.fa');
xx1 = CalcFreq(str,1,300);
xx2 = CalcFreq(str,2,300);
xx3 = CalcFreq(str,3,300);
xx4 = CalcFreq(str,4,300);

%run pca 
PCAFreq(xx1);
PCAFreq(xx2);
PCAFreq(xx3);
PCAFreq(xx4);

fragn = ClustFreq(xx3,7);

%visualize genes
GenBrowser(str,300,fragn,13000);
