%%Image segmentation and extraction
%%Read Image
imagen=imread('InData2/261.jpg');
imagen = imrotate(imagen,-90);
%%Show image
figure(1)
imshow(imagen);
title('INPUT IMAGE WITH NOISE')
%%Convert to gray scale
if size(imagen,3)==3 % RGB image
  imagen=rgb2gray(imagen);
end
%%Convert to binary image
threshold = graythresh(imagen);
imagen =~im2bw(imagen,threshold);
%%Remove all object containing fewer than 30 pixels
imagen = bwareaopen(imagen,30);
pause(1)
%%Show image binary image
figure(2)
imshow(~imagen);
title('INPUT IMAGE WITHOUT NOISE')
%%Label connected components
[L Ne]=bwlabel(imagen);
%%Measure properties of image regions
propied=regionprops(L,'BoundingBox');
hold on
%%Plot Bounding Box
for n=1:size(propied,1)
  rectangle('Position',propied(n).BoundingBox,'EdgeColor','m','LineWidth',2)
end
hold off
pause (1)
%%Objects extraction
figure
for n=1:Ne
  [r,c] = find(L==n);
  n1=imagen(min(r):max(r),min(c):max(c));
  imshow(~n1);
  x = input('Enter Picture Name :','s')
%   pause(0.9)
  n1 = imresize(~n1,[42 24]);
  imwrite(~n1,sprintf('InData2/%s26.jpg',x));
  clear x
  
end
printf('Successfully Rename');