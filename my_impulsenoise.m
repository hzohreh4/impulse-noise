
function [noisyImage,mask]= my_impulsenoise(originalImage,percentage)
[rows cols] = size(originalImage);
num=0;
for i=1:rows
    for j=1:cols
        R=rand(1);
        if(R<percentage)
           noisyImage(i,j)=randi([0,255],1,1);
           mask(i,j)=1;
           num=num+1;
        else
            noisyImage(i,j)=originalImage(i,j);
            mask(i,j)=0;
        end
    end
end
end
