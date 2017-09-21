% Part 3. Write another function called probabilityORF that utilizes the functions from 
% Parts 1 and 2. It should take two inputs - a sequence length (N) and an length  of an ORF (N_ORF) and
% returns the probability that that a sequence of length N contains an ORF
% of at least length N_ORF

function dna_prob = probabilityORF(N,N_ORF)
orf_probability=0;
for ii=1:1000
    dna_seq=randdnaseq(N);
    orf_length=findORF(dna_seq);

    if orf_length>=N_ORF
        orf_probability=orf_probability +1;
    end
end
orf_probability_for1000=(orf_probability/1000)*100;
disp(['Probability is ' num2str(orf_probability_for1000) ' percent.']);
