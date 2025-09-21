# Image Processing with MATLAB

This directory contains MATLAB scripts demonstrating fundamental image processing techniques, including color channel analysis and object segmentation.

## Prerequisites

- MATLAB (R2020a or later recommended)
- Image Processing Toolbox (required for functions such as `imhist`, `imbinarize`, `graythresh`, and `imadjust`)

## 1. RGB Channel Extraction & Binary Conversion

### Objective (RGB Channel Extraction)

This script reads a standard RGB color image, separates it into its individual Red, Green, and Blue channels, analyzes the intensity distribution of each channel by plotting histograms, and finally, converts each channel into a binary (black and white) image using its mean intensity value as the segmentation threshold.

### Dataset (RGB Channel Extraction)

- Image: `waterlily.png` (A standard test image is assumed, but any RGB image can be used).

### How to Run (RGB Channel Extraction)

1. Ensure you have MATLAB installed.
2. Place an image file (e.g., `waterlily.png`) in the same directory or provide the full path to the image in the script.
3. Open `assignment_1_1.m` in MATLAB.
4. Run the script. Two figure windows will be generated: one showing the histograms for each color channel and another displaying the resulting binary images.

## 2. Coin Image Segmentation 

### Objective (Coin Segmentation)

The goal of this script is to segment foreground objects (coins) from the background in a grayscale image. It uses contrast enhancement to improve the distinction between the coins and the background, followed by Otsu's method to automatically determine an optimal threshold for binarization. The script also includes optional steps for cleaning the resulting binary image using morphological operations.

### Dataset (Coin Segmentation)

- Image: `coins.png` (A standard grayscale test image from MATLAB's Image Processing Toolbox).

### How to Run (Coin Segmentation)

1. Ensure you have MATLAB with the Image Processing Toolbox.
2. Open `assignment_1_2.m` in MATLAB.
3. Run the script. A figure window will appear, showing the original image, the contrast-enhanced version, the initial segmented image, and the final cleaned segmentation.

## Acknowledgements

This work was supervised by Dr. Biswarup Ganguly, Assistant Professor in the Department of Electrical Engineering at NIT Silchar.

## License

This project is licensed under the [MIT License](LICENSE).
