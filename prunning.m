clear all; clc;

% Image read in
img = im2bw(imread('D:\Citra Digital\matlab morfologi\yogi.jpg'));

b_img_skel = bwmorph(img, 'skel', Inf);
b_img_spur = bwmorph(b_img_skel, 'spur', 40);
B = bwmorph(b_img_skel, 'branchpoints');
E = bwmorph(b_img_skel, 'endpoints');

[y,x] = find(E);
B_loc = find(B);

Dmask = false(size(img));
for k = 1:numel(x)
    D = bwdistgeodesic(b_img_skel,x(k),y(k));
    distanceToBranchPt = min(D(B_loc));
    Dmask(D < distanceToBranchPt) =true;
end
skelD = b_img_skel - Dmask;


figure,imshow(b_img_skel);
title('Skeletonized Image');
figure,imshow(skelD);
hold all;
[y,x] = find(B); plot(x,y,'ro');title('Branched Image');
figure,imshow(b_img_spur);
title('Skeletonized Purned Image');

