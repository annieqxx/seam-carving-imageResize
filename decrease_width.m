function [reducedColorImg,reducedEnergyImg] = decrease_width(img, energyIm)
[M,N,D] = size(img);
cumup = cumulativeEnergyMap(energyIm, 'VERTICAL');
vertiSeam = verticalSeam(cumup);
for i = 1:M
    reducedColorImg(i, 1:vertiSeam(i)-1,:) = img(i,1:vertiSeam(i)-1,:);
    reducedColorImg(i,vertiSeam(i):N-1,:) = img(i,vertiSeam(i)+1:N,:);
end
reducedEnergyImg = energyImg(uint8(reducedColorImg));
end






