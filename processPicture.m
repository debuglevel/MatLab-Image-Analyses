function [] = processPicture (filename)
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

printf("Dimensions of the picture:\n");
[width, height] = getImageDimensions(filename);
printf("  Width:\t %i\n", width);
printf("  Height:\t %i\n", height);
printf('\n');

printf("Color Depth:\n");
[colordepth, unused, unused] = getColorInformation(filename);
printf("  Number of Colors:\t %i\n", colordepth);
printf('\n');

[luminance] = getLuminance(filename);
printf('Luminance:\t %f\n', luminance);
printf('\n');

[contrast] = getContrast(filename);
printf('Contrast:\t %f\n', contrast);
printf('\n');

getColorStatistics(filename);
printf('\n');

endfunction
