function cumulativeEnergyMap = cumulative_min_energy_map(energyImg,seamDirection)
[M,N] = size(energyImg);
 if (length(seamDirection) == 10 & seamDirection == 'HORIZONTAL')
     cumulativeEnergyMap(:,1) = energyImg(:,1);
     for C = 2:N
         for R = 1:M
           compareM = cumulativeEnergyMap(max(R-1,1):min(R+1,M),C-1);
           cumulativeEnergyMap (R,C) = energyImg(R,C) + min(compareM);
         end
     end
 elseif (length(seamDirection) == 8 & seamDirection == 'VERTICAL')
     cumulativeEnergyMap(1,:) = energyImg(1,:);
     for R = 2:M
         for C = 1:N
           compareM = cumulativeEnergyMap(R-1,max(1,C-1):min(N,C+1));
           cumulativeEnergyMap(R,C) = energyImg(R,C) + min(compareM);
         end 
     end 
end