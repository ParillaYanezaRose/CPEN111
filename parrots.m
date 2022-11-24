clear all;
close all;
clc;

% I.	Importing, Displaying, and Converting Images.

% a.	Using the Editor of Octave, create a program that will load and display
% parrots.jpg
parrots = imread ('D:/Documents/4th Year/CPEN111/Midterm Exam/parrots.jpg');
imshow (parrots)

% b.	Examine the size of the parrots by typing whos to find out the size of
% the image that you have read in
whos parrots

% c.	Convert the class uint8 color image parrots to a gray scale image, and
% display the full intensity range gray-scale image using the imshow command
% obtain negative image
unit8_gray=imagesc(parrots, [0, 255]); colormap(gray);
figure(2), imshow(unit8_gray);
whos unit8_gray;

#Convert the true color image to a gray-scale image
gray_parrots = rgb2gray(parrots);
figure(3), imshow(gray_parrots);
whos gray_parrots;
