boat = imread("boat256.jpg");

subplot(2, 3, 1), imshow(boat);
subplot(2, 3, 4), histogram(boat, 'BinLimits', [0, 256], 'BinWidth', 1);

m = 1.5;
Lut = contrast_LS_Lut(m, 50);

subplot(2, 3, 2), plot(Lut);

enhancedImage     = enhanceContrastLS(boat, m, 20);
[alt_enhancedImage, alt_Lut] = enhanceContrastALS(boat);

subplot(2, 3, 3), imshow(enhancedImage);
subplot(2, 3, 5), imshow(alt_enhancedImage);
subplot(2, 3, 6), histogram(enhancedImage, 'BinLimits', [0, 256], 'BinWidth', 1);