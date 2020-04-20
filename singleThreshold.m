function [outputImage] = singleThreshold(inputImage,threshold)
sizeX=size(inputImage,1);
sizeY=size(inputImage,2);

outputImage = zeros(sizeX,sizeY);
for i=1:sizeX
    
    for j=1:sizeY
        
        if(inputImage(i,j)>threshold)
            outputImage(i,j) = 1; %% If the value is over the threshold it is converted to 1
        else
            outputImage(i,j) = 0; %% If the value is less than the threshold it is converted to 0
        end
        
    end
    
end

end

