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

printf("Metadata of the image:\n");
[city, citybrewery, state, year, extension] = getImageMetadata(filename);
printf("  City:\t %s\n", city);
printf("  Brewery within city:\t %s\n", citybrewery);
printf("  State of Germany:\t %s\n", state);
printf("  Year:\t %s\n", year);
printf("  extension:\t %s\n", extension);
printf('\n');
image.city = city;
image.citybrewery = citybrewery;
image.state = state;
image.year = year;
image.extension = extension;

printf("Dimensions of the image:\n");
[width, height, aspectratio] = getImageDimensions(filename);
printf("  Width:\t %i\n", width);
printf("  Height:\t %i\n", height);
printf("  Aspect ratio:\t %f\n", aspectratio);
printf('\n');
image.width = width;
image.height = height;
image.aspectratio = aspectratio;

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

printf('Distribution of predefined colors:\n');
[colorDistribution] = getColorStatistics(filename);
for i = 1:length(colorDistribution)
  printf('%18s: %3d%%\n', colorDistribution(i).name, colorDistribution(i).percentage);
  image.(['color: ' colorDistribution(i).name]) = colorDistribution(i).percentage;
end
printf('\n');

printf('\n');

endfunction
