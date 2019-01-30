boat = imread("boat256.jpg");

subplot(2, 3, 1), imshow(boat);
subplot(2, 3, 4), histogram(boat, 'BinLimits', [0, 256], 'BinWidth', 1);

subplot(2, 3, 2), plot(brightnessLUT(50));
enhancedImage = enhanceBrightness(boat, 50);

subplot(2, 3, 3), imshow(enhancedImage);
subplot(2, 3, 6), histogram(enhancedImage, 'BinLimits', [0, 256], 'BinWidth', 1);