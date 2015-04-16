function [filename, city, citybrewery, state, year, subyear, extension] = getImageMetadata (path)
% getImageMetadata  gets the metadata of the image
%
% SYNOPSIS: getImageMetadata(filename)
%
% INPUT filename: path to the image to process
% created by: Marc V. Kohaupt
% Licence: Creative Commons Zero / public domain
% last change and history: see version control system
% created with Octave 3.8.1 i686-pc-linux-gnu

matches = regexp(path, './pics/([a-z_-]*)_([0-9]*)_([a-z-]*)_?([0-9]*)([a-z]*)\.([a-z]*)', 'tokens');

groups = size(matches{1});
groups = groups(2);

city = matches{1}{1};
citybrewery = matches{1}{2};
state = matches{1}{3};
if (groups == 6)
  year = matches{1}{4};
  subyear = matches{1}{5};
  extension = matches{1}{6};
else
  year = '';
  subyear = '';
  extension = matches{1}{5};
end

temp = strread(path,'%s','delimiter','/');
filename = temp{end};

end
