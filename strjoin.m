% strjoin  joins a array of strings and separates each one with a given separator
%
% SYNOPSIS: strjoin(strings, separator)
%
% INPUT strings:   vector of string
%       separator: character or string to separate each element
%
% created by: https://github.com/lemonzi/matlab/blob/master/custom/strjoin.m
% modified by: Marc V. Kohaupt
% last change and history: see version control system
% created with Octave 3.8.1 i686-pc-linux-gnu

function out = strjoin(strings, separator)

if ischar(strings)
  strings = {strings};
end

out = strings{1};
if isnumeric(out)
  out = num2str(out);
end

if length(strings) > 1
  for s = 2:length(strings)
    s_dec = strings{s};
    if isnumeric(s_dec)
      s_dec = num2str(s_dec);
    end
    out = [out separator s_dec];
  end
end

end