function [] = part3()
% This functiion is a demo for using average convolution to blur the image.
% Which is little different from original exercise.
% No Input.
% No Output.

clear all;

% Read image
im1 = imread('peppers.png');
im2 = im2double(im1);

s = size(im2);

% New image matrix.
newImg = zeros(s(1)-1,s(2)-1,3);

% Perform convolution
for i=2:s(1)-1
    for j=2:s(2)-1
        for z=1:3
            newImg(i-1,j-1,z) = (im2(i,j,z)+im2(i-1,j,z)+im2(i,j-1,z)+im2(i-1,j-1,z)+im2(i,j+1,z)+im2(i+1,j,z)+im2(i+1,j+1,z)+im2(i-1,j+1,z)+im2(i+1,j-1,z))/9;
        end
    end
end

% Show difference.
figure
subplot(2,1,1)
imshow(im1)
subplot(2,1,2)
imshow(newImg)
end
        
        