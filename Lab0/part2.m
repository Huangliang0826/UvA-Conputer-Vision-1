function [] = part2()
% This function is a demo for changing RGB to BGR.
% No Input.
% No Output.

clear all;
% Read image
im1 = imread('peppers.png');
im2 = im2double(im1);

% R G B, three matrices
d1 = im2(:,:,1);
d2 = im2(:,:,2);
d3 = im2(:,:,3);

% Combine together with different order.
im3 = cat(3,d3,d2,d1);

% Show the differences.
figure
subplot(1,2,1)
imshow(im1)
subplot(1,2,2)
imshow(im3)
end