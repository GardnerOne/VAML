function [IOut, Lut] = enhanceContrastALS(IIn)

    my_hist = histogram(IIn, 'BinLimits', [0, 256], 'BinWidth', 1);
    results = my_hist.Values;

    min_and_max = find(results > 10);
    
    i_max = min_and_max(end);
    i_min = min_and_max(1);
    
    m = 255 / double(i_max - i_min);
    c = -m * i_min;

    Lut = contrast_LS_Lut(m, c);
    IOut = intlut(IIn, Lut);
end