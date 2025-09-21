% Step 1: Read the grayscale coin image
I = imread('coins.png');
figure, imshow(I), title('Original Image');

% Step 2: Convert to grayscale if needed
if size(I, 3) == 3
    I = rgb2gray(I);
end

% Step 3: Convert to double
Id = im2double(I); % Used for image enhancement operations that expect normalized data.

% Step 4: Image enhancement - invert contrast
I_low = imadjust(Id, [0, 1], [1, 0]);
figure, imshow(I_low), title('Low Contrast Inverted');

% Step 5: Image enhancement - increase contrast in specific range
I_high = imadjust(I, [0.5, 0.8], [0, 1]);
figure, imshow(I_high), title('High Contrast Enhanced');

% Step 6: Threshold using Otsu's method
threshold = graythresh(I_high);
segmentedImage = imbinarize(I_high, threshold);

% Step 7: Ensure binary image is 2D for imshow
if size(segmentedImage, 3) > 1
    segmentedImage = segmentedImage(:, :, 1);
end

% Step 8: Display the segmented image
figure, imshow(segmentedImage);
title('Segmented Coins After Enhancement');


