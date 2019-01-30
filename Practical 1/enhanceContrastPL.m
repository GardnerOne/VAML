function Iout = enhanceContrastPL(Iin, gamma)
    Iout = intlut(Iin, contrast_PL_Lut(gamma));
end