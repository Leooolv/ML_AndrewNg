% clear all;
% clf;
% ex3();
img = imread('9.png');
img = double(img(:,:,1))./255;
img =1-im2bw(img,0.5);
im = img'
imshow(im',[0 1])
[m n] = size(im);
h = zeros(1,m*n);
for i = 1:m
     h(1+(i-1)*n:i*n) = im(i,:)';
end
v =[1 h];

% N = 8
% h = zeros(20,20);
% displayData(sel(N,:));
% for i = 1:20
%   h(i,:) = sel(N,1+(i-1)*20:i*20);
% end
% figure,imshow(h',[]);
% v =[1 sel(N,:)];

[~,p] = max(all_theta*v',[],1);

all_theta*v'
p