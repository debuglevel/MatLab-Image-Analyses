function [] = logfile (fileName, msg)
% logfile  writes the given message to the given file
%
% SYNOPSIS: logfile(filename, message)
%
% INPUT filename: name of the file to write the message to
%       message: the message to write into the file
%
% created by: Marc V. Kohaupt
% Licence: Creative Commons Zero / public domain
% last change and history: see version control system
% created with Octave 3.8.2 i686-w64-mingw32

fileHandler = fopen(fileName, 'a');

if fileHandler ~= -1
  fprintf(fileHandler, '%s', msg);
  fclose(fileHandler);
end

end
