clear all;
close all;
clc;

#1. Open the original image fruits.png and view it. What data type is it?
fruits = imread ('D:/Documents/4th Year/CPEN111/exercise1/fruits.png');
imshow (fruits)
whos fruits
imfinfo 'fruits.png'

#2. Reduce the spatial resolution of the original image. Using imwrite function, save it as fruits2.png
pkg load image;
smallImage = imresize(fruits, 1/16, 'nearest');
figure, imshow(smallImage);
imwrite(smallImage,'D:/Documents/4th Year/CPEN111/exercise1/fruits2.png')
imfinfo 'fruits2.png'

#3. Convert from its color RGB image to HSV and save it as fruits3.png
changeimage = rgb2hsv(fruits);
imwrite(changeimage,'D:/Documents/4th Year/CPEN111/exercise1/fruits3.png')
figure(3), imshow (changeimage);
imfinfo 'fruits3.png'
