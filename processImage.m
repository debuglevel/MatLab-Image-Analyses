function [image] = processImage(filename)
% processImage  applies certain analysis to an image
%
% SYNOPSIS: processImage(filename)
%
% INPUT filename: path to the image to process
%
% created by: Marc V. Kohaupt
% Licence: Creative Commons Zero / public domain
% last change and history: see version control system
% created with Octave 3.8.1 i686-pc-linux-gnu

image.filename = filename;

printf("Dimensions of the image:\n");
[width, height] = getImageDimensions(filename);
printf("  Width:\t %i\n", width);
printf("  Height:\t %i\n", height);
printf('\n');
image.width = width;
image.height = height;

printf("Color Depth:\n");
[colordepth, unused, unused] = getColorInformation(filename);
printf("  Number of Colors:\t %i\n", colordepth);
printf('\n');
image.colordepth = colordepth;

[luminance] = getLuminance(filename);
printf('Luminance:\t %f\n', luminance);
printf('\n');
image.luminance = luminance;

[contrast] = getContrast(filename);
printf('Contrast:\t %f\n', contrast);
printf('\n');
image.contrast = contrast;

printf("File size of the image:\n");
[filesize] = getFilesize(filename);
printf("  File size:\t %i Bytes\n", filesize);
printf('\n');
image.filesize = filesize;

image.duration = NaN;

getColorStatistics(filename);
printf('\n');

endfunction
