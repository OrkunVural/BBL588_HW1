function [] = lowPass(inputImage)

    LPF_kernel3x3=[
        0.111,	0.111,	0.111;
        0.111,	0.111,	0.111;
        0.111,	0.111,	0.111
    ]; %%Coefficients for 3x3 LPF Kernel 
    LPF_kernel5x5=[
        0.04, 0.04, 0.04, 0.04, 0.04;
        0.04, 0.04, 0.04, 0.04, 0.04;
        0.04, 0.04, 0.04, 0.04, 0.04;
        0.04, 0.04, 0.04, 0.04, 0.04;
        0.04, 0.04, 0.04, 0.04, 0.04
    ]; %%Coefficients for 5x5 LPF Kernel
    gaussian_kernel3x3=[
        1/16,	2/16,	1/16;
        2/16,	4/16,	2/16;
        1/16,	2/16,	1/16
     ]; %%Coefficients for 3x3 Gaussian Kernel

    blurred_matrix=conv2(inputImage, LPF_kernel3x3, 'same'); %%2-D convolution is used for applying 3x3 LPF Kernel on original image
    output_3x3= mat2gray(blurred_matrix); %output matrix is converted to grayscale image
    blurred_matrix=conv2(inputImage, LPF_kernel5x5, 'same'); %%2-D convolution is used for applying 5x5 LPF Kernel on original image
    output_5x5= mat2gray(blurred_matrix); %output matrix is converted to grayscale image
    blurred_matrix=conv2(inputImage, gaussian_kernel3x3, 'same'); %%2-D convolution is used for applying Gaussian Kernel on original image
    output_gaussian= mat2gray(blurred_matrix); %output matrix is converted to grayscale image

    figure
    subplot(1,3,1)
    imshow(output_3x3);
    subplot(1,3,2)
    imshow(output_5x5);
    subplot(1,3,3)
    imshow(output_gaussian);

end

