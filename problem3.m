clear
close all

img = imread('inputSeamCarvingPrague.jpg');
energyimg = energyImg(img);
figure(1);
imagesc(energyimg);

figure(2);
cumumphori = imagesc(cumulativeEnergyMap(energyimg, 'HORIZONTAL'));

figure(3);
cumumpverti = imagesc(cumulativeEnergyMap(energyimg, 'VERTICAL'));
