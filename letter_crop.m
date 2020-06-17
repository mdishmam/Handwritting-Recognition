
function [fl re space]=letter_crop(im_texto)

im_texto=clip(im_texto);
num_filas=size(im_texto,2);

for s=1:num_filas
    s;
    sum_col = sum(im_texto(:,s));
    if sum_col==0
        k = 'true';
        nm=im_texto(:,1:s-1); % First letter matrix
        
        rm=im_texto(:,s:end);% Remaining line matrix
        
        fl = clip(nm);
        %pause(1);
        re=clip(rm);
        space = size(rm,2)-size(re,2);
        
       break
    else
        fl=im_texto;
        re=[ ];
        space = 0;
    end
end


function img_out=clip(img_in)
[f c]=find(img_in);
img_out=img_in(min(f):max(f),min(c):max(c));
