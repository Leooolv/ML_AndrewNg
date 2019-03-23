% clear all;
% clf;

img = imread('4.png');
img = double(img(:,:,1))./255;
img =1-im2bw(img,0.5);
im = img';
imshow(im',[0 1]);
[m n] = size(im);
h = zeros(1,m*n);
for i = 1:m
     h(1+(i-1)*n:i*n) = im(i,:)';
end
v =[1 h];
% size(v)

h1 = sigmoid(v * Theta1');
h2 = sigmoid([1 h1] * Theta2');
[~,p] = max(h2,[],2);

p