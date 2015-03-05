function [number_of_colors, unique_Lab_colors, unique_LabColors_with_count, aggregatedCounts] = getColorInformation (filename)
% getColorInformation  gets information about unique colors used in an image
%
% SYNOPSIS: getColorInformation(filename)
%
% INPUT filename: path to the image to process
%
% created by: Marc V. Kohaupt
% Licence: Creative Commons Zero / public domain
% last change and history: see version control system
% created with Octave 3.8.1 i686-pc-linux-gnu

Lab = getLabImage(filename);

% Lab:        A x 3 matrix (A pixels; pixel = 3 columns of L*a*b color information)
% uniqueLab:  B x 3 matrix (B unique pixels, sorted ascending)
% index:      A x 1 vector (index vector "where is this value in the new vector?")
[unique_Lab_colors, unused, index] = unique(Lab, 'rows');
Lab = []; % free memory
% aggregatedCounts:   B x 1 vector (count of the B unique pixels)
aggregatedCounts = [accumarray(index, 1)];
% uniqueLabWithCount: B x 4 matrix (B unique pixels and their count)
unique_LabColors_with_count = [unique_Lab_colors aggregatedCounts];

% get number of rows
number_of_colors = size(unique_Lab_colors)(1);

endfunction
