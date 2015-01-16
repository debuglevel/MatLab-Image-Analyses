function color = createColor (name, r, g, b)
% createColor  create a RGB color struct consisting of a name, RGB values and a count 
%
% SYNOPSIS: color = createColor(name, r, g, b)
%
% INPUT name: human readable name of the color
%       r: value between 0 and 255 for the red value 
%       g: value between 0 and 255 for the green value 
%       b: value between 0 and 255 for the blue value 
%
% OUTPUT color: struct consisting of a name, RGB values and a count 
%
% REMARKS the count field is not used at the moment and may be removed in the future
%
% SEE ALSO creatLabColor
%
% created by: Marc V. Kohaupt
% Licence: Creative Commons Zero / public domain
% last change and history: see version control system
% created with Octave 3.8.2 i686-w64-mingw32

color.name = name;
color.r = r;
color.g = g;
color.b = b;
color.count = 0;

endfunction
