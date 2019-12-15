
clear
close all

  
  img = imread('download2.jpeg');
  subplot(2,3,1)
  imshow(img);
  title('original');
  
  subplot(2,3,2)
  imgg = imresize(img,[500, 800]);;
  imshow(imgg);
  title('resize done by my computer system')
  
energyIm = energyImg(img);
for i=1:50
    [reducedColorImg, reducedEnergyImg] = decrease_width(img, energyIm);     
end
  subplot(2,3,3)
  imshow(uint8(reducedColorImg))
  title('mySeamCarving')
  
  
  
 
  
 