%%Read Image
global img;
imagen=img;

%%Convert to gray scale
if size(imagen,3)==3 % RGB image
  imagen=rgb2gray(imagen);
end

%%Convert to binary image
% threshold = graythresh(imagen);
% imagen =~im2bw(imagen,threshold);

imagen = ~imbinarize(imagen,'adaptive','ForegroundPolarity','dark','Sensitivity',0.4);

%%Remove all object containing fewer than 30 pixels
imagen = bwareaopen(imagen,30);


imshow(~imagen);

%%Label connected components
[L Ne]=bwlabel(imagen);
%%Measure properties of image regions
propied=regionprops(L,'BoundingBox');
hold on
%%Plot Bounding Box
for n=1:size(propied,1)
  rectangle('Position',propied(n).BoundingBox,'EdgeColor','b','LineWidth',2)
end
hold off
