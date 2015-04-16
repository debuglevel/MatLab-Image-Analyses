function labColors = getDefinedColorsLab ()
% getDefinedColorsLab  gets a list of predefined L*a*b* colors
%
% SYNOPSIS: labColors = getDefinedColorsLab()
%
% OUTPUT labColors: array of color struct with predefined colors (see createLabColor())
%
% SEE ALSO getDefinedColors, createLabColor
%
% created by: Marc V. Kohaupt
% Licence: Creative Commons Zero / public domain
% last change and history: see version control system
% created with Octave 3.8.2 i686-w64-mingw32

definedColors = getDefinedColors();

% iterate through each color defined and get its Lab-color
for i = 1:length(definedColors)
  [L,a,b] = RGB2Lab(definedColors(i).r, definedColors(i).g, definedColors(i).b);
  labColors(i) = createLabColor(definedColors(i).name, L, a, b);
end

end
