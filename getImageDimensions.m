function [width, height, aspectratio] = getImageDimensions (filename)
% getImageDimensions  gets the width and height of an image
%
% SYNOPSIS: getImageDimensions(filename)
%
% INPUT filename: path to the image to process
%
% created by: Marc V. Kohaupt
% Licence: Creative Commons Zero / public domain
% last change and history: see version control system
% created with Octave 3.8.1 i686-pc-linux-gnu

% read image file
[RGB, map, alpha] = imread(filename);

% get dimensions
image_size = size(RGB);
height = image_size(1);
width = image_size(2);
aspectratio = width / height;

end
