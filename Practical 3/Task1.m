file_name = 'viptraffic.avi';
videoObject = VideoReader(file_name);

% Alternatively:
% file_info = aviinfo(file_name);

% MPEG Video
% shopping_video_name = 'shopping_center.mpg';
% shopping_videoObject = VideoReader(shopping_video_name);

videoFrames = read(videoObject);
% implay(file_name, videoObject.FrameRate / 2);

montage(videoFrames);

frame = videoFrames(:,:,:,10);
% imshow(frame);