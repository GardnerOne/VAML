function Lut = brightnessLUT(c)

    % Task 2, Step 1
    Lut = zeros(256, 1);
    
    for i = 1:length(Lut)
        if (i - 1) < -c
            Lut(i) = 0;
        elseif (i - 1) > 255 - c
            Lut(i) = 255;
        else
            Lut(i) = (i - 1) + c;
        end
    end
    
    Lut=uint8(Lut);
end