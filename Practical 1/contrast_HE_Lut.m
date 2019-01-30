function Lut = contrast_HE_Lut(Iin)
    Lut = zeros(256, 1);
    
    hist = histogram(Iin, 'BinLimits', [0, 256], 'BinWidth', 1);
    results = hist.Values;
    ch = cumsum(results);
    for i = 1:length(Lut)
       Lut(i) = max(0, round((256 * ch(i)) / (length(Iin) ^ 2)) - 1); 
    end

    Lut = uint8(Lut);
end