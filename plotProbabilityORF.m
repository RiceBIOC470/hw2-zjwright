% Part4. Write  a final function called plotProbabilityORF.m which takes
% N_ORF as an argument and makes a plot of the probabily of having an
% ORF at least this long as a function of the dna sequence length. Decide how the
% code should determine the lengths of dna sequence to test and implement
% your decision. 

function prob_plot=plotProbabilityORF(N_ORF)
x=1:(25*N_ORF);
y=zeros(size(x));
for dna_seq_length=1:(25*N_ORF)
y(dna_seq_length)=probabilityORF(dna_seq_length, N_ORF);
end
figure;
scatter(x, y);
xlabel('seq length');
ylabel('prob'); 
end