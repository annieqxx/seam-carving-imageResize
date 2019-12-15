function view_seam(img,seam,seamDirection)
imshow(img);
hold on;
[M,N,D] = size(img);
if(length(seamDirection) == 10 & seamDirection == 'HORIZONTAL')
    plot(1:N,seam,'r')
elseif(length(seamDirection) == 8 & seamDirection == 'VERTICAL')  
    plot(seam,1:M,'r')
end    
hold off;
end