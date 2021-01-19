%Compute the Hamming weight of the input

function[H]=HammingWeight(V)
    L = size(V, 2);
        
    for i=1:L
        H(i) = uint8(sum(dec2bin(V(i)).'=='1'));
    end
end