clc
clear all
close all
warning off
%set webcam
w=webcam('USB Camera');
% activate webcam
y=preview(w);
pause(2)
%take photo
x=snapshot(w);
x1=im2gray(x);
x2=imgaussfilt3(x1); %imwrite(x2,'reference.jpg') y=imread('reference.jpg');
y1=im2gray(y);
y2=imgaussfilt3(y1);
[g c d]=size(x2);
y2=imresize(y2,[g,c]);
subplot(1,3,1)
imshow(y2);
title('pcb image without any defect') subplot(1,3,2)
imshow(x2);
title('image of pcb which is manufactured') subplot(1,3,3)
imshow(x2-y2);
title('error')