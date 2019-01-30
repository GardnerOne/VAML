boat = double(imread("boat256.jpg"));
dome = double(imread("dome256.jpg"));

% Built-in histogram equalisation

figure

subplot(2, 4, 1), imshow(uint8(boat));
subplot(2, 4, 5), imshow(uint8(dome));

subplot(2, 4, 2), histeq(uint8(boat));
subplot(2, 4, 6), histeq(uint8(dome));

% boat_trans = histeq(uint8(boat)) - uint8(boat);
% dome_trans = histeq(uint8(dome)) - uint8(dome);
% subplot(2, 4, 3), plot(boat_trans);
% subplot(2, 4, 7), plot(dome_trans);

subplot(2, 4, 4), histogram(histeq(uint8(boat)), 'BinLimits', [0, 256], 'BinWidth', 1);
subplot(2, 4, 8), histogram(histeq(uint8(dome)), 'BinLimits', [0, 256], 'BinWidth', 1);

% Custom histogram equalisation

figure

subplot(2, 3, 1), imshow(uint8(boat));
subplot(2, 3, 4), histogram(uint8(boat), 'BinLimits', [0, 256], 'BinWidth', 1);

subplot(2, 3, 2), plot(contrast_HE_Lut(uint8(boat)));
enhancedImage = enhanceContrastHE(uint8(boat));

subplot(2, 3, 3), imshow(enhancedImage);
subplot(2, 3, 6), histogram(enhancedImage, 'BinLimits', [0, 256], 'BinWidth', 1);