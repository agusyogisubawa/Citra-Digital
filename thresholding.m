gambar = imread('Grafiti.jpg');
gambar2 = rgb2gray(gambar);

level = graythresh(gambar2);

hasil = im2bw(gambar2, level);

subplot (1,2,1);
imshow(gambar); title ('Citra Asli');
subplot (1,2,2);
imshow(hasil); title ('Citra Thresholding');