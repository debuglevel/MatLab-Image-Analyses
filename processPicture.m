function [picture] = processPicture (filename)
% processPicture  applies certain analysis to a picture
%
% SYNOPSIS: processPicture(filename)
%
% INPUT filename: path to the picture to process
%
% created by: Marc V. Kohaupt
% Licence: Creative Commons Zero / public domain
% last change and history: see version control system
% created with Octave 3.8.1 i686-pc-linux-gnu

picture.filename = filename;

printf("Dimensions of the picture:\n");
[width, height] = getImageDimensions(filename);
printf("  Width:\t %i\n", width);
printf("  Height:\t %i\n", height);
printf('\n');
picture.width = width;
picture.height = height;

printf("Color Depth:\n");
[colordepth, unused, unused] = getColorInformation(filename);
printf("  Number of Colors:\t %i\n", colordepth);
printf('\n');
picture.colordepth = colordepth;

[luminance] = getLuminance(filename);
printf('Luminance:\t %f\n', luminance);
printf('\n');
picture.luminance = luminance;

[contrast] = getContrast(filename);
printf('Contrast:\t %f\n', contrast);
printf('\n');
picture.contrast = contrast;

getColorStatistics(filename);
printf('\n');

endfunction
