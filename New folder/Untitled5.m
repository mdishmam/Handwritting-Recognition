
chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

for i = 1:size(chars,2)
    for j = 1:15   
        dat = imread(sprintf('%s%d.jpg',chars(i),j));
        dat = imresize(dat,[42 24]);
        imwrite(dat,sprintf('%s%d.jpg',chars(i),j));
    end
end



