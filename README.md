# Image-Processing-using-MATLAB
This directory contains MATLAB scripts demonstrating fundamental image processing techniques, including color channel analysis and object segmentation.

1. RGB Channel Extraction & Binary Conversion (rgb_channel_extraction.m)
Objective
This script reads a standard RGB color image, separates it into its individual Red, Green, and Blue channels, analyzes the intensity distribution of each channel by plotting histograms, and finally, converts each channel into a binary (black and white) image using its mean intensity value as the segmentation threshold.

Dataset
Image: waterlily.png (A standard test image is assumed, but any RGB image can be used).

How to Run
Ensure you have MATLAB installed.

Place an image file (e.g., waterlily.png) in the same directory or provide the full path to the image in the script.

Open rgb_channel_extraction.m in MATLAB.

Run the script. Two figure windows will be generated: one showing the histograms for each color channel and another displaying the resulting binary images.

2. Coin Image Segmentation (coin_segmentation.m)
Objective
The goal of this script is to segment foreground objects (coins) from the background in a grayscale image. It uses contrast enhancement to improve the distinction between the coins and the background, followed by Otsu's method to automatically determine an optimal threshold for binarization. The script also includes optional steps for cleaning the resulting binary image using morphological operations.

Dataset
Image: coins.png (A standard grayscale test image from MATLAB's Image Processing Toolbox).

How to Run
Ensure you have MATLAB with the Image Processing Toolbox.

Open coin_segmentation.m in MATLAB.

Run the script. A figure window will appear, showing the original image, the contrast-enhanced version, the initial segmented image, and the final cleaned segmentation.
