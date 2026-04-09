img = imread('D:\Document_session_2\DSP_TN\test.jpg');

scf(0);
imshow(img);
title('Original Image');

info = imfinfo('D:\Document_session_2\DSP_TN\test.jpg');
disp('Image Info:');
disp(info);

if size(img,3) == 3 then
    gray_img = rgb2gray(img);
else
    gray_img = img;
end

scf(1);
imshow(gray_img);
title('Grayscale Image');
