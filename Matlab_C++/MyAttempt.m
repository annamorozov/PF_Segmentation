clear all;
close all;
clc;

if ~exist('pfsegment', 'file')
    mex -DMEX pfsegment.cpp
end

imgSrc = imread('D:\Anna\MaqFACS\For Analysis\Lisa Parr - G_10232_X1\18780_FramesCropped\TrainingData\FrameCropped004496.png');
figure;
subplot(1,2,1);imshow(imgSrc,[]);title('Source image');

sigma = 0.5;
k = 1000;
mim_z = 1000;

segs = pfsegment(imgSrc,sigma,k,mim_z);
subplot(1,2,2);imshow(segs,[]);title('Segmentation result');
