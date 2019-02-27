% Convolution and Noise Filtering
boat = imread("boatnois.jpg");
B = ones(3, 3) / 9;

figure
subplot(1, 3, 1), imshow(boat);
subplot(1, 3, 2), imshow(uint8(conv2(boat, B)));
subplot(1, 3, 3), imshow(uint8(filter2(B, boat)));
% conv2 has more of a border and has a pixel border

C = ones(5, 5) / 25;
figure
subplot(1, 3, 1), imshow(boat);
subplot(1, 3, 2), imshow(uint8(conv2(boat, C)));
subplot(1, 3, 3), imshow(uint8(filter2(C, boat)));
% More blur

figure
imshow(uint8(noiseReduction(boat, 7)));

figure
imshow(uint8(myconvolution(boat, B)));