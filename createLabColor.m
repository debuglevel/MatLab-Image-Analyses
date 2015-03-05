function labColor = createLabColor (name, L, a, b)
% createLabColor  create a L*a*b* color struct consisting of a name, L* a* b* values and a count 
%
% SYNOPSIS: labColor = createLabColor(name, L, a, b)
%
% INPUT name: human readable name of the color
%       L: value between 0 and 100 for the Lightness value 
%       a: value between -128 and 127 for the a* value 
%       b: value between -128 and 127 for the b* value 
%
% OUTPUT color: struct consisting of a name, L* a* b* values and a count 
%
% SEE ALSO createLabColor
%
% created by: Marc V. Kohaupt
% Licence: Creative Commons Zero / public domain
% last change and history: see version control system
% created with Octave 3.8.2 i686-w64-mingw32

labColor.name = name;
labColor.L = L;
labColor.a = a;
labColor.b = b;
%labColor.count = 0;

endfunction