Img=imread('D:\Citra Digital\matlab morfologi\yogi.jpg');
im = im2bw(Img);
thin = bwmorph(im, 'thin');
thick = bwmorph(thin, 'thicken',5);
subplot(1,2,1);
imshow(thin);
title('Gambar Thinned')
subplot(1,2,2);
imshow(thick);
title('Gambar Hasil Thicked Citra')