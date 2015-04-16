function [city, citybrewery, state, year, extension] = getImageMetadata (filename)
% getImageMetadata  gets the metadata of the image
%
% SYNOPSIS: getImageMetadata(filename)
%
% INPUT filename: path to the image to process
%
% created by: Marc V. Kohaupt
% Licence: Creative Commons Zero / public domain
% last change and history: see version control system
% created with Octave 3.8.1 i686-pc-linux-gnu

 
matches = regexp(filename, './pics/([a-z_]*)_([0-9]*)_([a-z-]*)_([0-9]*)\.([a-z]*)', 'tokens');

city = matches{1}{1};
citybrewery = matches{1}{2};
state = matches{1}{3};
year = matches{1}{4};
extension = matches{1}{5};
 
endfunction
