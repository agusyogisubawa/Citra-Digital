clc;
clear all;
close all;
A=imread('D:\Citra Digital\matlab morfologi\yogi.jpg');
f=3;
s=size(A);
s1=s/f;
k=1;
l=1;
for i=1:s1
    for j=1:s1
        B(i,j)=A(k,l);
        l=l+f;
    end
    l=1;
    k=k+f;
end
subplot(1,2,1);
imshow(A);
title('Gambar Asli')
subplot(1,2,2);
imshow(B);
title('Gambar Hasil Shrinked Citra')