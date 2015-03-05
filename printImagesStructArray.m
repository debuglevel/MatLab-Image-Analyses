function [image] = printImagesStructArray (imagesStructArray)
% printImagesStructArray  prints the image struct array
%
% SYNOPSIS: printImagesStructArray(imagesStructArray)
%
% INPUT filename: path to the image to process
%
% created by: Marc V. Kohaupt
% Licence: Creative Commons Zero / public domain
% last change and history: see version control system
% created with Octave 3.8.1 i686-pc-linux-gnu

cellData = struct2cell(imagesStructArray);         %# A 3-by-3 cell array
fprintf('%45s | %5s | %6s | %6s | %9s | %8s | %9s | %8s\n', "file name", "width", "height", "colors", "luminance", "contrast", "file size", "duration");  %# Print the data
fprintf('%45s | %5s | %6s | %6s | %9s | %8s | %9s | %8s\n', "---------------------------------------------", "-----", "------", "------", "---------", "--------", "---------", "--------");  %# Print the data
fprintf('%-45s | %5i | %6i | %6i | %9.1f | %8.2f | %9i | %8.1f\n', cellData{:});  %# Print the data
fprintf('\n');

endfunction
