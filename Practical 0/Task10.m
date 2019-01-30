I = imread('lena.jpeg');

% figure(1);
% image(I);
% 
% figure(2);
% imagesc(I);
% 
% figure(3);
% imshow(I);

% I2 = I - 50;
% image(I2);
% imwrite(I2, 'modified.jpeg', 'JPEG');
% 
% R = I(:, :, 1);
% 
% figure(1);
% image(R);
% 
% figure(2);
% imagesc(R);
% 
% figure(3);
% imshow(R);
% 
% figure(2)
% colormap(gray)

figure, imagesc(R), colormap(gray(128)), title('quantization: 128 levels (7 bpp)')
figure, imagesc(R), colormap(gray(64)), title('quantization: 64 levels (6 bpp)')
figure, imagesc(R), colormap(gray(16)), title('quantization: 16 levels (4 bpp)')
figure, imagesc(R), colormap(gray(4)), title('quantization: 4 levels (3 bpp)')

imwrite(R, 'test_gray.jpg', 'JPEG');