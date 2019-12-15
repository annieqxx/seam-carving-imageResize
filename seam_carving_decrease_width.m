clear
close all

img = imread('inputSeamCarvingPrague.jpg');
energyIm = energyImg(img);
%reducedColorImg = img;
%reducedEnergyImg = energyIm;

for i=1:100
    [reducedColorImg, reducedEnergyImg] = decrease_width(img, energyIm);     
end
  figure;
  imshow(uint8(reducedColorImg))