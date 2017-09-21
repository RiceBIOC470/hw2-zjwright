% Part4. Write  a final function called plotProbabilityORF.m which takes
% N_ORF as an argument and makes a plot of the probabily of having an
% ORF at least this long as a function of the dna sequence length. Decide how the
% code should determine the lengths of dna sequence to test and implement
% your decision. 

function prob_plotter=plotProbabilityORF(N_ORF)
dna_seq_length=N_ORF*100;
N=1:dna_seq_length;
y=[];
for x=1:dna_seq_length
    probabilityORF(x, N_ORF)
end
