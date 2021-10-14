clc;
img = im2bw(imread('D:\Citra Digital\matlab morfologi\yogi.jpg')); %membaca image pada directori dan konversi ke biner
T = bwmorph(img, 'skel', inf); %operasi ke Skeletonizing
subplot(1,2,1);
imshow(img);
title('Gambar Thinned')
subplot(1,2,2);
imshow(T);
title('Gambar Hasil Skeletonized Citra')