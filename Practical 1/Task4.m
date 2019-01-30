boat = imread("boat256.jpg");

subplot(2, 3, 1), imshow(boat);
subplot(2, 3, 4), histogram(boat, 'BinLimits', [0, 256], 'BinWidth', 1);

gamma = 1.5;
subplot(2, 3, 2), plot(contrast_PL_Lut(gamma));
enhancedImage = enhanceContrastPL(boat, gamma);

subplot(2, 3, 3), imshow(enhancedImage);
subplot(2, 3, 6), histogram(enhancedImage, 'BinLimits', [0, 256], 'BinWidth', 1);