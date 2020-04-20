function [grayOut] = gaussianBlur(inputImage,sigma)
    %channels of rgb image are separated
    red = inputImage(:, :, 1);
    green = inputImage(:, :, 2);
    blue = inputImage(:, :, 3);
    
    redBlur = imgaussfilt(red,sigma);
    greenBlur = imgaussfilt(green,sigma);
    blueBlur = imgaussfilt(blue,sigma);
    
    grayOut = (redBlur + greenBlur + blueBlur)/3; 
    
    figure
    subplot(1,3,1)
    imshow(redBlur);
    subplot(1,3,2)
    imshow(greenBlur);
    subplot(1,3,3)
    imshow(blueBlur);
    
end

