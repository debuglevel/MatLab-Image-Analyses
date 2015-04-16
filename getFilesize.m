function [size] = getFilesize (filename)
% getFilesize  gets the file size of an image
%
% SYNOPSIS: getFilesize(filename)
%
% INPUT filename: path to the file to process
%
% created by: Marc V. Kohaupt
% Licence: Creative Commons Zero / public domain
% last change and history: see version control system
% created with Octave 3.8.1 i686-pc-linux-gnu

info = dir(filename);
size = info.bytes;

end
