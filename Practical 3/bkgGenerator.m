function [bkg] = bkgGenerator(videoStream, sampling)

    buffer = [];
    counter = 0;
    
    for t = 1:sampling:size(videoStream, 4)
       counter = counter + 1;
       buffer(:,:,counter) = double(rgb2gray(videoStream(:,:,:,t)));
    end
    
    % Remove cars
    bkg = median(buffer, 3);

%       mono = sum(double(videoStream) / 3, 3);
%       mono = mono(1,2,4);
%       bkg = median(mono(:,:,1:sampling:size(mono, 3), 3));
end