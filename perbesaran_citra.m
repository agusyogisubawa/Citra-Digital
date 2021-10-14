function G = perbesaran_citra(berkas, sy, sx)

F = imread(berkas);
ukuran = size(F);
tinggi = ukuran(1);
lebar = ukuran(2);

tinggi_baru = tinggi * sy;
lebar_baru = lebar * sx;

F2 = double(F);
for y = 1 : tinggi_baru
    y2 = ((y-1)/ sy)+1;
    for x = 1: lebar_baru
        x2 = ((x-1)/ sx)+ 1;
        
        G(y, x) = F(floor(y2), floor(x2));
    end
end
G = uint8(G);
F = uint8(F);
figure(1);imshow(F); title('Citra Asli');
figure(2); imshow(G); title('Citra Besar');

    