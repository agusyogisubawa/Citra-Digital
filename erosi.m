gambar = imread('D:\Citra Digital\matlab morfologi\Grafiti.jpg');
gray = rgb2gray(gambar);
se = strel('ball',5,5);
erosi_citra = imerode(gray,se);
subplot(1,2,1);
imshow(gambar);
title('Gambar Asli')
subplot(1,2,2);
imshow(erosi_citra);
title('Gambar Hasil Erosi Citra')
