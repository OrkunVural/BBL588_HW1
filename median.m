function [outputImage] = median(inputImage,kernelSize)
    %channels of rgb image are separated
    red = inputImage(:, :, 1);
    green = inputImage(:, :, 2);
    blue = inputImage(:, :, 3);
    
    I_red=medfilt2(red,[kernelSize,kernelSize]);
    I_green=medfilt2(green,[kernelSize,kernelSize]);
    I_blue=medfilt2(blue,[kernelSize,kernelSize]);
    
    outputImage(:, :, 1)=I_red;
    outputImage(:, :, 2)=I_green;
    outputImage(:, :, 3)=I_blue;
    
    figure 
    subplot (1,2,1)
    imshow(inputImage);
    subplot (1,2,2)
    imshow(outputImage);
end

