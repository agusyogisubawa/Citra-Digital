gambar = imread('Grafiti.jpg');
gambar2 = imcrop(gambar,[160, 20, 200, 200]);

hasil = im2bw(gambar2);
subplot (1,2,1);
imshow(gambar);
title('Citra Asli');
subplot (1,2,2);
imshow (hasil);
title('Citra Crop');