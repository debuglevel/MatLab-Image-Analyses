function [Lab] = getLabImage (filename)
% getLabImage  gets the image converted to L*a*b*
%
% SYNOPSIS: getLabImage(filename)
%
% INPUT filename: path to the image
%
% created by: Marc V. Kohaupt
% Licence: Creative Commons Zero / public domain
% last change and history: see version control system
% created with Octave 3.8.1 i686-pc-linux-gnu

% read image file
[RGB, map, alpha] = imread(filename);

% apply map if existing (e.g. 256 colors PNG files without transparency)
if ~isempty(map)
  RGB = ind2rgb(RGB, map);
end

% convert RGB to L*a*b*-Colorspace
Lab = RGB2Lab(RGB);
RGB = []; % free memory

% convert 3D Array to 2D Array (just a list of 3x color)
array_size_y = size(Lab)(1);
array_size_x = size(Lab)(2);
Lab = reshape(Lab, [array_size_x * array_size_y, 3]);

% Remove transparent values. Keep only those rows where alpha is not 0 (i.e. 100% transparent).
[alpha_size_x, alpha_size_y] = size(alpha);
if (alpha_size_x != 0 && alpha_size_y != 0)
  alpha = reshape(alpha, [array_size_x * array_size_y, 1]);
  Lab = Lab(alpha != 0, :);
end
map = []; % free memory
alpha = []; % free memory

endfunction