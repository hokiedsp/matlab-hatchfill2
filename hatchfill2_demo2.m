close; clear all;

figure;
x = randn(2000,1);
y = 1 + randn(5000,1);
h = histogram(x);
hf1 = hatchfill2(h);

figure;
[X,Y,Z] = peaks(25);
CO(:,:,1) = zeros(25); % red
CO(:,:,2) = ones(25).*linspace(0.5,0.6,25); % green
CO(:,:,3) = ones(25).*linspace(0,1,25); % blue
h = surf(X,Y,Z,CO);
hf1 = hatchfill2(h);
