clear all;
clc;
T = 45;
I = imread('D:\Citra Digital\citra digital\Grafiti.jpg');
J = putar_utuh(I,T); 
figure(1);imshow(I);
figure(2);imshow(uint8(J),'initialmagnification','fit');
