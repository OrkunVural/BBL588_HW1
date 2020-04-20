function [] = highPass(inputImage)

    HPF_kernel3x3=[
        -1,	-1,	-1;
        -1,	8,	-1;
        -1,	-1,	-1
    ]; %%Coefficients for 3x3 HPF Kernel 
    HPF_kernel3x3_2=[
        0.17, 0.67, 0.17;
        0.67, -3.33, 0.67;
        0.17, 0.67, 0.17
    ]; %%Coefficients for 2nd 3x3 HPF Kernel
    boost_kernel3x3=[
        -1,	-1,	-1;
        -1,	12.5,	-1;
        -1,	-1,	-1
     ]; %%Coefficients for 3x3 High Boost Filter Kernel -- A=1.5

    blurred_matrix=conv2(inputImage, HPF_kernel3x3, 'same'); %%2-D convolution is used for applying 3x3 HPF Kernel on original image
    output_3x3= mat2gray(blurred_matrix); %output matrix is converted to grayscale image
    blurred_matrix=conv2(inputImage, HPF_kernel3x3_2, 'same'); %%2-D convolution is used for applying 3x3 HPF Kernel on original image
    output_3x3_2= mat2gray(blurred_matrix); %output matrix is converted to grayscale image
    blurred_matrix=conv2(inputImage, boost_kernel3x3, 'same'); %%2-D convolution is used for applying High Boost Kernel on original image
    output_boost= mat2gray(blurred_matrix); %output matrix is converted to grayscale image

    figure
    subplot(1,3,1)
    imshow(output_3x3);
    subplot(1,3,2)
    imshow(output_3x3_2);
    subplot(1,3,3)
    imshow(output_boost);

end