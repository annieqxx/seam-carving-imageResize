function [reducedColorImg,reducedEnergyImg] = decrease_width(img, energyIm)
[M,N,D] = size(img);
cumup = cumulativeEnergyMap(energyIm, 'HORIZONTAL');
horiSeam = horizontalSeam(cumup);
for i = 1:N
    reducedColorImg(1:horiSeam(i)-1,i,:) = img(1:horiSeam(i)-1,i,:);
    reducedColorImg(horiSeam(i):M-1,i,:) = img(horiSeam(i)+1:M,i,:);  
end
reducedEnergyImg = energyImg(uint8(reducedColorImg));
end
