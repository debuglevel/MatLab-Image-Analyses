function [image] = processImage(path)
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

image.path = path;

fprintf('Metadata of the image:\n');
[filename, city, citybrewery, state, year, subyear, extension] = getImageMetadata(path);
fprintf('  Filename:\t\t %s\n', filename)
fprintf('  City:\t\t\t %s\n', city)
fprintf('  Brewery within city:\t %s\n', citybrewery)
fprintf('  State of Germany:\t %s\n', state)
fprintf('  Year:\t\t\t %s\n', year)
fprintf('  Sub-Year:\t\t %s\n', subyear)
fprintf('  extension:\t\t %s\n', extension)
fprintf('\n');
image.filename = filename;
image.city = city;
image.citybrewery = citybrewery;
image.state = state;
image.year = year;
image.subyear = subyear;
image.extension = extension;

fprintf('Dimensions of the image:\n');
[width, height, aspectratio] = getImageDimensions(path);
fprintf('  Width:\t %i\n', width);
fprintf('  Height:\t %i\n', height);
fprintf('  Aspect ratio:\t %f\n', aspectratio);
fprintf('\n');
image.width = width;
image.height = height;
image.aspectratio = aspectratio;

fprintf('Color Depth:\n');
[colordepth, unused, unused] = getColorInformation(path);
fprintf('  Number of Colors:\t %i\n', colordepth);
fprintf('\n');
image.colordepth = colordepth;

[luminance] = getLuminance(path);
fprintf('Luminance:\t %f\n', luminance);
fprintf('\n');
image.luminance = luminance;

[contrast] = getContrast(path);
fprintf('Contrast:\t %f\n', contrast);
fprintf('\n');
image.contrast = contrast;

fprintf('File size of the image:\n');
[filesize] = getFilesize(path);
fprintf('  File size:\t %i Bytes\n', filesize);
fprintf('\n');
image.filesize = filesize;

image.duration = NaN;

fprintf('Distribution of predefined colors:\n');
[colorDistribution] = getColorStatistics(path);
for i = 1:length(colorDistribution)
  fprintf('%18s: %3d%%\n', colorDistribution(i).name, colorDistribution(i).percentage);
  image.(['color__' colorDistribution(i).name]) = colorDistribution(i).percentage;
end
fprintf('\n');

fprintf('\n');

end
