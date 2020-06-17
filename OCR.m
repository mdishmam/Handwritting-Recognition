% OCR (Optical Character Recognition).

warning off
% clc, close all, clear all

global img;
imagen = img;
% imagen=imread('iLvBd.jpg');

imagen1 = imagen;
% figure,imshow(imagen1);
% title('INPUT IMAGE WITH NOISE')

if size(imagen,3)==3
    imagen=rgb2gray(imagen);
end

% threshold = graythresh(imagen);
% 
% imagen =~im2bw(imagen,threshold);

imagen = ~imbinarize(imagen,'adaptive','ForegroundPolarity','dark','Sensitivity',0.4);

%%Remove all object containing fewer than 30 pixels
imagen = bwareaopen(imagen,30);

imagen2 = imagen;

imagen = bwareaopen(imagen,30);
imagen3 = imagen;

word=[ ];
re=imagen;

fid = fopen('text.txt', 'wt');

load templates
global templates

num_letras=size(templates,2);
while 1
    
    [fl re]=lines_crop(re); 
    imgn=fl;
    n=0;
    
    %-----------------------------------------------------------------
    
    spacevector = [];     
    rc = fl;              
   
    while 1
       [fc rc space]=letter_crop(rc);  
       img_r = imresize(fc,[42 24]);  
       n = n + 1;
       spacevector(n)=space;
       
       
       letter = read_letter(img_r,num_letras);
       
       
       word = [word letter];
       
       if isempty(rc)  
           break;
        end
    end
    
        %-------------------------------------------------------------------
        
        %
    max_space = max(spacevector);
    no_spaces = 0;
    
     for x= 1:n  
       if spacevector(x+no_spaces)> (0.75 * max_space)
          no_spaces = no_spaces + 1;
            for m = x:n
              word(n+x-m+no_spaces)=word(n+x-m+no_spaces-1);
            end
           word(x+no_spaces) = ' ';
           spacevector = [0 spacevector];
       end
     end
   
    fprintf(fid,'%s\n',word);
    
    word=[ ];
   
    if isempty(re) 
        break
    end
end
global output;
output = strtrim(fileread('text.txt'));
fclose(fid);
%  winopen('text.txt')
% clear all