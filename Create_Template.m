%Reading Section

clc
clear all;

Str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
SingleChar = 26;

path = 'New folder/';
dat =  [];
for i = 1:size(Str,2)
    for j = 1:SingleChar
        img = imread(sprintf('%s%s%d.jpg',path,Str(i),j));
        img = imbinarize(img);
        dat = [dat img];
    end
end

cells = SingleChar * size(Str,2);

colums = 24 + zeros(1,cells);


templates=mat2cell(dat,42,colums);

save ('templates','templates')
 clear all
            
            
            