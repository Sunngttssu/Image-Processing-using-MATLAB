image = imread('waterlily.png');
% Separate RGB channels
R = image(:,:,1);
G = image(:,:,2);
B = image(:,:,3);

% Plot Histograms
figure;
subplot(3,1,1);
imhist(R);
title('Red Channel Histogram');

subplot(3,1,2);
imhist(G);
title('Green Channel Histogram');

subplot(3,1,3);
imhist(B);
title('Blue Channel Histogram');

% Compute mean intensity of each channel
meanR = mean(R(:));
meanG = mean(G(:));
meanB = mean(B(:));

% Convert each channel to binary using mean as threshold
binaryR = imbinarize(R, meanR/255); % normalized to [0,1]
binaryG = imbinarize(G, meanG/255);
binaryB = imbinarize(B, meanB/255);

% Display the binary images
figure;
subplot(1,3,1);
imshow(binaryR);
title('Binary Red Channel');

subplot(1,3,2);
imshow(binaryG);
title('Binary Green Channel');

subplot(1,3,3);
imshow(binaryB);
title('Binary Blue Channel');
