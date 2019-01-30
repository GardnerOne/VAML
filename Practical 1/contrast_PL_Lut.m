function Lut = contrast_PL_Lut(gamma)

    Lut = zeros(256, 1);
    
    for i = 1:length(Lut)
       input = (i - 1);
       Lut(i) = round((input ^ gamma) / (255 ^ (gamma - 1)));
    end
    
    Lut = uint8(Lut);

end