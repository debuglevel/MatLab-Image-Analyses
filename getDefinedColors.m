function colors = getDefinedColors ()
% getDefinedColors  get a list of predefined RGB colors
%
% SYNOPSIS: colors = getDefinedColors()
%
% OUTPUT colors: array of a color struct with predefined colors (see createColor())
%
% SEE ALSO getDefinedColorsLab, createColor
%
% created by: Marc V. Kohaupt
% Licence: Creative Commons Zero / public domain
% last change and history: see version control system
% created with Octave 3.8.2 i686-w64-mingw32

i = 0;

colors(++i) = createColor("blau", 0, 0, 255);
colors(++i) = createColor("gruen", 0, 255, 0);
colors(++i) = createColor("rot", 255, 0, 0);
colors(++i) = createColor("weiss", 255, 255, 255);
colors(++i) = createColor("schwarz", 0, 0, 0);

%colors(++i) = createColor("hellblau", 124, 124, 255);
%colors(++i) = createColor("ocker", 150, 128, 70);

endfunction
