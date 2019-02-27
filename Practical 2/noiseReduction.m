function Iout = noiseReduction(I, N) 
    mask = ones(N, N) / (N * N);
    Iout = filter2(mask, I);
end