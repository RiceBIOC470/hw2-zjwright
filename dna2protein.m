function proteinseq = dna2protein(dnaseq,frame)
% Input a dna sequence and a reading frame and returns the corresponding
% protein sequence.
if frame==1
    proteinseq = nt2aa(dnaseq,'Frame',1);
elseif frame==2
    proteinseq = nt2aa(dnaseq,'Frame',2);
elseif fram==3
    proteinseq=nt2aa(dnaseq, 'Frame',3);
else
    disp('error: frame not 1, 2, or 3')
end
end