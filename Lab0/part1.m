function [] = part1()
% This function is a demo for dividing an image into four pieces and rearrange
% the 4 pieces in different order.
% No Input.
% No Output.

% Read image.
im1 = imread('peppers.png');
im2 = im2double(im1);
s = size(im2);

% Divide the image into 4 parts.
sub1 = im2(1:s(1)/2,1:s(2)/2,:);
sub2 = im2(1:s(1)/2,s(2)/2+1:s(2),:);
sub3 = im2(s(1)/2+1:s(1),1:s(2)/2,:);
sub4 = im2(s(1)/2+1:s(1),s(2)/2+1:s(2),:);

% Show difference.
figure()
subplot(2,2,1);
imshow(sub1)

subplot(2,2,2);
imshow(sub2)

subplot(2,2,3);
imshow(sub3)

subplot(2,2,4);
imshow(sub4)

figure()
subplot(2,2,2);
imshow(sub1)

subplot(2,2,1);
imshow(sub2)

subplot(2,2,4);
imshow(sub3)

subplot(2,2,3);
imshow(sub4)
end
