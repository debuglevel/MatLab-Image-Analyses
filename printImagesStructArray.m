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

%cellData = struct2cell(imagesStructArray);
%fprintf('%45s | %5s | %6s | %12s | %6s | %9s | %8s | %9s | %8s\n', "file name", "width", "height", "aspect ratio", "colors", "luminance", "contrast", "file size", "duration");
%fprintf('%45s | %5s | %6s | %12s | %6s | %9s | %8s | %9s | %8s\n', "---------------------------------------------", "-----", "------", "------------", "------", "---------", "--------", "---------", "--------");
%fprintf('%-45s | %5i | %6i | %12.2f | %6i | %9.1f | %8.2f | %9i | %8.1f\n', cellData{:});  %# Print the data
%fprintf('\n');


% CSV
filename = 'results.csv';
struct2csv(imagesStructArray, filename);
printf('Output written to CSV file %s. Please open it with Excel or something similar.', filename);

%fileHandler = fopen("results.csv", 'w');

%if fileHandler ~= -1
  %fprintf(fileHandler, '%s, %s, %s, %s, %s, %s, %s, %s, %s\n', "file name", "width", "height", "aspect ratio", "colors", "luminance", "contrast", "file size", "duration");
  %fprintf(fileHandler, '%s, %i, %i, %f, %i, %f, %f, %i, %f\n', cellData{:});  %# Print the data
  %fclose(fileHandler);
%end




endfunction
