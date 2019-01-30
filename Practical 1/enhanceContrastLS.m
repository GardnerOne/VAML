function IOut = enhanceContrastLS(IIn, m, c)
    IOut = intlut(IIn, contrast_LS_Lut(m, c));
end