function [fl re]=lines_crop(im_texto)

im_texto=clip(im_texto);
num_filas=size(im_texto,1);
for s=1:num_filas
    if sum(im_texto(s,:))==0
        nm=im_texto(1:s-1, :); 
        %pause(1);
        rm=im_texto(s:end, :);
        %pause(1);
        fl = clip(nm);
        pause(1);
        re=clip(rm);
       
        break
    else
        fl=im_texto;%Only one line.
        re=[ ];
    end
end

function img_out=clip(img_in)
[f c]=find(img_in);
img_out=img_in(min(f):max(f),min(c):max(c));
