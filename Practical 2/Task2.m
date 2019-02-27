boat = imread("boatnois.jpg");

t = 1;
B1 = zeros(3) + [-t 0 t];
B2 = B1';
   
[Edges, Ihor, Iver] = edgeDetection(boat, B1, B2);

subplot(1,2,1), imshow(boat);
subplot(1,2,2), imshow(uint8(Edges));