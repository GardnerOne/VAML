vehicle = imread("vehicle.jpg");

subplot(2, 3, 1), imshow(vehicle), title("Original Image");
subplot(2, 3, 4), histogram(vehicle, 'BinLimits', [0, length(vehicle)], 'BinWidth', 1), title("Original Histogram");