%Function to find the length of the longest open reading frame of a
%sequences called dnaseq
function [max_orf_length, start_pos, first_stop_pos] = findORF(dnaseq)
dnaseq=upper(dnaseq);
start_pos=strfind(dnaseq, 'ATG');
stop_pos=[strfind(dnaseq, 'TAA'), strfind(dnaseq, 'TAG'), strfind(dnaseq, 'TGA')];
first_stop_pos=zeros(1, length(start_pos));

for ii=1:length(start_pos);
    orf_lengths=stop_pos-start_pos(ii);
    good_coding_seq_length=1e10;
    orf_index=0;
    for jj=1:length(orf_lengths);
        if orf_lengths(jj)>0 && mod(orf_lengths(jj),3)==0;
        orf_lengths(jj)<good_coding_seq_length;
        good_coding_seq=orf_lengths(jj);
        orf_index=jj;
    end
end
if orf_index>0;
    first_stop_pos(ii)=stop_pos(orf_index);
else
    first_stop_pos(ii)=start_pos(ii);
end
end
orf_sizes=first_stop_pos-start_pos+3;
[max_orf_length, ind_max]=max(orf_sizes);

if max_orf_length>3;
    disp(['The longest in-frame coding sequence is ' int2str(max_orf_length) 'bp long. The start codon is at ' int2str(start_pos(ind_max)) ' and the stop codon is at ' int2str(first_stop_pos(ind_max))]);
else
    disp('No ORFs found')
end

