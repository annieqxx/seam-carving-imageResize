function energyImg = energy_img(img)
grayscale_IMG = rgb2gray(img);
[Gx,Gy] = imgradient(grayscale_IMG);
energyImg = Gx;
%energyImg = (sqrt((diff(Gx).^2)+(diff(Gy)).^2)); %imgradient fomula;
end

