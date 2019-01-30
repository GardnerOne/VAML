my_array = [2,4,6,9,0,8,6,5,7,9,0,8,8,7,8,0,0,9,8,7,5,3,4,5,6,7,9,0,0,9];

% Step 1 - 4
searchingForZeros(my_array);
my_array = addOneWithFors(my_array);
my_array = addOne(my_array);

% Step 5
A = rand(10000, 10000);
tic
A = addOneWithFors(A);
toc

tic
A = addOne(A);
toc