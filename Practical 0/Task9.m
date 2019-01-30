%x = 0:pi/100:2*pi;
%y = sin(x);
%z = cos(x);

%hold on;

%plot(x, y, 'g.');
%figure(2)
%plot(x, z, 'r--');

%xlabel('x');
%ylabel('sin(x)');
%title('Plot of the Sine Function');

%subplot(2, 1, 1), plot(x, y, 'b*');
%subplot(2, 1, 2), plot(x, z, 'y+');

% Step 7
points = rand(10, 3);
plot3(points(:, 1), points(:, 2), points(:, 3), 'o');
xlabel('x');
ylabel('y');

hold on

line([points(1, 1), points(2, 1)], [points(1, 2), points(2, 2)]);
line([points(1, 1), points(6, 1)], [points(1, 2), points(6, 2)]);
line([points(6, 1), points(2, 1)], [points(6, 2), points(2, 2)]);