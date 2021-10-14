gambar = imread('Grafiti.jpg');
[baris, kolom, layer] = size(gambar);

for x = 1:baris
for y = 1:kolom
for z = 1:layer
gambar_negatif(x,y,z) = 255 - gambar(x,y,z);
end
end
end

red = gambar(:,:,1); green = gambar(:,:,2); blue = gambar(:,:,3);
red1 = gambar_negatif(:,:,1); green1 = gambar_negatif(:,:,2); blue1 = gambar_negatif(:,:,3);
subplot (1,2,1);
imshow(gambar); title('Citra Asli');
subplot (1,2,2); imshow(gambar_negatif); title('Citra Negatif');