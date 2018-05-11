close all;
clear all;
clc;


x=imread('cameraman.tif');
x=im2double(x);
[m,n]=size(x);

[u s v] = svd(x);

A=zeros(m,n);
ss = s;
END = 50;
i=2;
for n = 1 : END;
  
A= A + s(n,n) * u(:,n) * v(:,n)';

subplot(3,3,1);
imshow(x);
title('Original Image');

subplot(3,3,i);
imshow(A);
title('Reconstructed with n singular values');
xlabel(['No of singular values (n)=',num2str(n)]);
i = i+1
% pause(1);
% drawnow;
 
 saveas(gcf,'datacom.jpg');

end

