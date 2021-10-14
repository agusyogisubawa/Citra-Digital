F = imread ('D:\Citra Digital\citra digital\Grafiti.jpg');
[tinggi, lebar] = size(F);
sudut = 10;
rad = pi * sudut/180;
cosa = cos(rad);
sina = sin(rad);
F2 = double(F);
for y=1 : tinggi
    for x=1 : lebar
        x2 = round(x * cosa + y * sina);
        y2 = round(y * cosa - x * sina);
        
        if(x2>=1) && (x2<=lebar) && (y2>=1) && (y2<=tinggi)
            G(y, x) = F2(y2, x2);
        else
            G(y, x) = 0;
        end
    end
end
G = uint8(G);
F = uint8(F);
figure(1); imshow(F); title('Citra Asli');
figure(1); imshow(G); title ('Citra Putar');
clear all;