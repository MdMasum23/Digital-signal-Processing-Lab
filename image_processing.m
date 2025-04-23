img = imread('tiger.jpg'); 

figure;
subplot(2,2,1);
imshow(img);
title('Original Image');

[rows, cols, ~] = size(img);
gray_img = zeros(rows, cols, 'uint8');

for i = 1:rows
    for j = 1:cols
        R = double(img(i,j,1));
        G = double(img(i,j,2));
        B = double(img(i,j,3));
        gray = 0.2989 * R + 0.5870 * G + 0.1140 * B;
        gray_img(i,j) = uint8(gray);
    end
end

subplot(2,2,2);
imshow(gray_img);
title('Grayscale Image');

new_rows = 300;
new_cols = 300;
resized_img = zeros(new_rows, new_cols, 3, 'uint8');

row_scale = rows / new_rows;
col_scale = cols / new_cols;

for i = 1:new_rows
    for j = 1:new_cols
        orig_i = round(i * row_scale);
        orig_j = round(j * col_scale);
        orig_i = min(max(orig_i, 1), rows);
        orig_j = min(max(orig_j, 1), cols);
        resized_img(i,j,:) = img(orig_i, orig_j, :);
    end
end

subplot(2,2,3);
imshow(resized_img);
title('Resized Image');
