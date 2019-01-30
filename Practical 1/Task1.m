boat = imread("boat256.jpg");
dome = imread("dome256.jpg");

% Plot images
subplot(2, 2, 1), imshow(boat);
subplot(2, 2, 2), imshow(dome);

% Plot histograms
subplot(2, 2, 3), histogram(boat, 'BinLimits', [0 256], 'BinWidth', 1);
subplot(2, 2, 4), histogram(dome, 'BinLimits', [0 256], 'BinWidth', 1);

% Optionally save a histogram
hist_boat = histogram(boat, 'BinLimits', [0 256], 'BinWidth', 1);
hist_vals_boat = hist_boat.Values;

% Use a function to return the histogram
new_hist = myHistogram(boat);
new_hist_vals = new_hist.Values;

% Compare function values with previous calculations
valid = true;
for i = 1:hist_vals_boat
    if valid == false
       break; 
    end
    
    for j = 1:new_hist_vals
       if hist_vals_boat(i) ~= new_hist_vals(j)
           valid = false;
           break;
       end
       
       continue;
    end
end

if valid
    disp("Success: matching results");
else
    disp("Error: unmatching results");
end