I=imread('SunnyLake.bmp');
I_gray=toGrayscale(I,0.3,0.6,0.1);
figure
imshow(I_gray);
I_gray2=toGrayscale(I,0.7,0.6,0.1);
figure
imshow(I_gray2);

figure
histGray=histogram(I_gray);

I_bw=singleThreshold(I_gray,50);
figure 
imshow(I_bw);

I_grayBlur1=gaussianBlur(I,1);
I_grayBlur5=gaussianBlur(I,5);
I_grayBlur10=gaussianBlur(I,10);
I_grayBlur20=gaussianBlur(I,20);

figure
subplot(2,2,1)
imshow(I_grayBlur1);
subplot(2,2,2)
imshow(I_grayBlur5);
subplot(2,2,3)
imshow(I_grayBlur10);
subplot(2,2,4)
imshow(I_grayBlur20);

lowPass(I_grayBlur1);
lowPass(I_grayBlur5);
lowPass(I_grayBlur10);
lowPass(I_grayBlur20);



I_saltAndPepper=imread('Figure_1.png');
I_noiseFree=median(I_saltAndPepper,3);
I_noiseFree2=median(I_saltAndPepper,5);