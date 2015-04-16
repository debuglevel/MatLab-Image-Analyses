% struct2csv  writes a struct to a CSV file and preserves the labels
%
% SYNOPSIS: struct2csv(data, filename)
%
% INPUT data:     struct to be converted to CSV
%       filename: filename to write the CSV into
%
% created by: https://github.com/lemonzi/matlab/blob/master/custom/struct2csv.m
% modified by: Marc V. Kohaupt
% last change and history: see version control system
% created with Octave 3.8.1 i686-pc-linux-gnu

function struct2csv (data, filename)

labels = fieldnames(data);
raw = struct2cell(data(:));

fd = fopen(filename, 'w');

if fd == -1
  error(['Could not open "' filename '" for writing.']);
end

fprintf(fd, '"%s"\n', strjoin(labels, '";"'));
%if nargin < 3 || header
%  fprintf(fd, '%s\n', strjoin(labels, ', '));
%end

for i = 1:size(raw, 2)
  fprintf(fd, '"%s"\n', strjoin(raw(:,i), '";"'));
end

fclose(fd);

end
