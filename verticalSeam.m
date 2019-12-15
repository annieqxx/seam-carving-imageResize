function verticalSeam = find_vertical_seam(cumulativeEnergyMap)
[M,N] = size(cumulativeEnergyMap);    
[X,comp] = min(cumulativeEnergyMap(M,:));
verticalSeam(M) = comp;
for i=M-1:-1:1
    [x,y] = min(cumulativeEnergyMap(i,(max(verticalSeam(i+1)-1,1):min(verticalSeam(i+1)+1,N))));
    verticalSeam(i) = y+max(verticalSeam(i+1)-1,1)-1;
end