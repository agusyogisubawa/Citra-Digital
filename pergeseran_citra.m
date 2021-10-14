F = imread ('D:\Citra Digital\citra digital\Grafiti.jpg');
[tinggi,lebar] = size(F);

sx = 45; 
sy = -35;

F2 = double(F);
G = zeros(size(F2));

for y=1 : tinggi
    for x=1 : lebar
        xlama = x-sx;
        ylama = y-sy;
        if(xlama>=1) && (xlama<=lebar) && (ylama>=1) && (ylama<=tinggi)
            G(y, x) = F2 (ylama, xlama);
        else
            G(y, x) = 0;
        end
    end
end
G = uint8(G);
F = uint8(F);
figure(1); imshow(F); title('Citra Asli');
figure(2); imshow(G); title('Citra Geser');