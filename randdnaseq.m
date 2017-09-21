function randomSeq = randdnaseq(N)
DNA='ATCG';
randomSeq=DNA(randi(4,1,N));
% returns a random dna sequence of length N
