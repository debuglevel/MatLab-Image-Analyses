function [picture] = printPicturesStructArray (picturesStructArray)
% printPicturesStructArray  prints the picture struct array
%
% SYNOPSIS: printPicturesStructArray(picturesStructArray)
%
% INPUT filename: path to the picture to process
%
% created by: Marc V. Kohaupt
% Licence: Creative Commons Zero / public domain
% last change and history: see version control system
% created with Octave 3.8.1 i686-pc-linux-gnu

cellData = struct2cell(picturesStructArray);         %# A 3-by-3 cell array
fprintf('%30s | %5s | %6s | %11s | %10s | %8s \n', "file name", "width", "height", "color depth", "luminance", "contrast");  %# Print the data
fprintf('%30s | %5s | %6s | %11s | %10s | %8s \n', "------------------------------", "-----", "------", "-----------", "----------", "--------");  %# Print the data
fprintf('%-30s | %5i | %6i | %11i | %10f | %8f \n', cellData{:});  %# Print the data
fprintf('\n');

endfunction
