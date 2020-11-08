function BER = ComputeBER(bit_seq,rec_bit_seq)
%
% Inputs:
%   bit_seq:     The input bit sequence
%   rec_bit_seq: The output bit sequence
% Outputs:
%   BER:         Computed BER
%
% This function takes the input and output bit sequences and computes the
% BER

%%% WRITE YOUR CODE HERE
incorrectBits = 0;
for i = 1 : length(bit_seq)
  if (bit_seq(i) ~= rec_bit_seq(i))
    incorrectBits++;
  end
end
BER = incorrectBits / length(bit_seq);
%%%
