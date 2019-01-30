% Return a histogram of a given image
function this_hist = myHistogram(image)
    this_hist = histogram(image, 'BinLimits', [0 256], 'BinWidth', 1);
end