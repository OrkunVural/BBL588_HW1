function [outputImage] = toGrayscale(inputImage,rCo,gCo,bCo)
      red = inputImage(:, :, 1);
      green = inputImage(:, :, 2);
      blue = inputImage(:, :, 3);
      
      % color components are multiplied with related coefficients 
      outputImage = rCo*double(red) + gCo*double(green) + bCo*double(blue);  
      outputImage = uint8(outputImage); %for display
end

