clear
close all

img = imread('inputSeamCarvingPrague.jpg');
energyIm = energyImg(img);
reducedColorImg = img;
reducedEnergyImg = energyIm;

for i=1:50
    [reducedColorImg, reducedEnergyImg] = decrease_height(img, energyIm);     
end
  figure;
  imshow(uint8(reducedColorImg))