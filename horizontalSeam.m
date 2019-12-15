function horizontalSeam = find_horizontal_seam(cumulativeEnergyMap)
[M,N] = size(cumulativeEnergyMap);    
[X,comp] = min(cumulativeEnergyMap(:,N));
horizontalSeam(N) = comp;
for i=N-1:-1:1
   [~,y] = min(cumulativeEnergyMap((max(horizontalSeam(i+1)-1,1):min(horizontalSeam(i+1)+1,M)), i));
   horizontalSeam(i) = y+max(horizontalSeam(i+1)-1,1)-1;
end
 