filename = 'viptraffic.avi';
video = VideoReader(filename);
frames = read(video);
[width, height, channels, length] = size(frames);
bkg_colour = frames(:,:,:,length);
% bkg = rgb2gray(bkg_colour);
% Task 2b background generator
tic
bkg = bkgGenerator(frames, 3);
toc

% Manual greyscale
% bkg2 = bkg_colour(:,:,1) / 3 + bkg_colour(:,:,2) / 3 + bkg_colour(:,:,3) / 3;

% Compare auto vs manual greyscale
% subplot(1, 3, 1), imshow(bkg_colour);
% subplot(1, 3, 2), imshow(bkg);
% subplot(1, 3, 3), imshow(bkg2);

resultTraffic = VideoWriter('resultTraffic.avi');
open(resultTraffic);
MAP = colormap(gray(256));

threshold = 35;
for t = 1:length
    currentFrame_colour = frames(:,:,:,t);
    currentFrame = rgb2gray(currentFrame_colour);
    subplot(2, 3, 1), imshow(currentFrame), title(['Frame: ', num2str(t)]);
    subplot(2, 3, 2), imshow(uint8(bkg)), title('Background');
    pause(0.05);
    
    blobs = abs(double(currentFrame) - double(bkg)) > threshold;
    subplot(2, 3, 3), imshow(blobs), title('Blobs'), colormap(gray);
    
    rows = 5;
    columns = 5;
    frame = im2frame(uint8(blobs) * 255, MAP);
    mask = ones(rows, columns);
    
    newframe = imclose(frame.cdata, mask);
    subplot(2, 3, 4), imshow(newframe), title('Imclose');
    
    blobslabel = bwlabel(newframe);
    subplot(2, 3, 5), imshow(blobslabel), title('Labelling');
    
    numVehicles = max(max(blobslabel));
    
    BBs = [];
    for b = 1:numVehicles
       [ys, xs] = find(blobslabel == b);
       
       xmax = max(xs);
       xmin = min(xs);
       ymax = max(ys);
       ymin = min(ys);
       
       BB = [xmin, ymin, xmax, ymax];
       BBs = [BBs; BB];
    end
    
    subplot(2, 3, 6), imshow(currentFrame), title('Labelling'), hold on
    for b = 1:numVehicles
       rectangle('Position', [BBs(b,1), BBs(b,2), BBs(b,3) - BBs(b,1) + 1, BBs(b,4) - BBs(b,2) + 1])
    end
    hold off;
    
    writeVideo(resultTraffic, frame);
end

close(resultTraffic);

% implay('resultTraffic.avi');