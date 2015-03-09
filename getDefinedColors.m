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

% split intensity of a color channel into 6 levels
level_1 = 255 / 5 * 0;  % minimal intensity = black
level_2 = 255 / 5 * 1;
level_3 = 255 / 5 * 2;
level_4 = 255 / 5 * 3;
level_5 = 255 / 5 * 4;
level_6 = 255 / 5 * 5;  % maximum intensity = full color

colors(end+1) = createColor("blau",            0,         0,        level_6);
colors(end+1) = createColor("blau dunkel 1",   0,         0,        level_5);
colors(end+1) = createColor("blau dunkel 2",   0,         0,        level_4);
colors(end+1) = createColor("blau dunkel 3",   0,         0,        level_3);
colors(end+1) = createColor("blau dunkel 4",   0,         0,        level_2);
colors(end+1) = createColor("blau hell 1",     level_2,   level_2,  level_6);
colors(end+1) = createColor("blau hell 2",     level_3,   level_3,  level_6);
colors(end+1) = createColor("blau hell 3",     level_4,   level_4,  level_6);
colors(end+1) = createColor("blau hell 4",     level_5,   level_5,  level_6);

colors(end+1) = createColor("gruen",            0,        level_6,  0);
colors(end+1) = createColor("gruen dunkel 1",   0,        level_5,  0);
colors(end+1) = createColor("gruen dunkel 2",   0,        level_4,  0);
colors(end+1) = createColor("gruen dunkel 3",   0,        level_3,  0);
colors(end+1) = createColor("gruen dunkel 4",   0,        level_2,  0);
colors(end+1) = createColor("gruen hell 1",     level_2,  level_6,  level_2);
colors(end+1) = createColor("gruen hell 2",     level_3,  level_6,  level_3);
colors(end+1) = createColor("gruen hell 3",     level_4,  level_6,  level_4);
colors(end+1) = createColor("gruen hell 4",     level_5,  level_6,  level_5);

colors(end+1) = createColor("rot",              level_6,  0,        0);
colors(end+1) = createColor("rot dunkel 1",     level_5,  0,        0);
colors(end+1) = createColor("rot dunkel 2",     level_4,  0,        0);
colors(end+1) = createColor("rot dunkel 3",     level_3,  0,        0);
colors(end+1) = createColor("rot dunkel 4",     level_2,  0,        0);
colors(end+1) = createColor("rot hell 1",       level_6,  level_2,  level_2);
colors(end+1) = createColor("rot hell 2",       level_6,  level_3,  level_3);
colors(end+1) = createColor("rot hell 3",       level_6,  level_4,  level_4);
colors(end+1) = createColor("rot hell 4",       level_6,  level_5,  level_5);

colors(end+1) = createColor("gelb",             level_6,  level_6,  0);
colors(end+1) = createColor("gelb dunkel 1",    level_5,  level_5,  0);
colors(end+1) = createColor("gelb dunkel 2",    level_4,  level_4,  0);
colors(end+1) = createColor("gelb dunkel 3",    level_3,  level_3,  0);
colors(end+1) = createColor("gelb dunkel 4",    level_2,  level_2,  0);
colors(end+1) = createColor("gelb hell 1",      level_6,  level_6,  level_2);
colors(end+1) = createColor("gelb hell 2",      level_6,  level_6,  level_3);
colors(end+1) = createColor("gelb hell 3",      level_6,  level_6,  level_4);
colors(end+1) = createColor("gelb hell 4",      level_6,  level_6,  level_5);

colors(end+1) = createColor("tuerkis",          0,        level_6,  level_6);
colors(end+1) = createColor("tuerkis dunkel 1", 0,        level_5,  level_5);
colors(end+1) = createColor("tuerkis dunkel 2", 0,        level_4,  level_4);
colors(end+1) = createColor("tuerkis dunkel 3", 0,        level_3,  level_3);
colors(end+1) = createColor("tuerkis dunkel 4", 0,        level_2,  level_2);
colors(end+1) = createColor("tuerkis hell 1",   level_2,  level_6,  level_6);
colors(end+1) = createColor("tuerkis hell 2",   level_3,  level_6,  level_6);
colors(end+1) = createColor("tuerkis hell 3",   level_4,  level_6,  level_6);
colors(end+1) = createColor("tuerkis hell 4",   level_5,  level_6,  level_6);

colors(end+1) = createColor("pink",             level_6,  0,        level_6);
colors(end+1) = createColor("pink dunkel 1",    level_5,  0,        level_5);
colors(end+1) = createColor("pink dunkel 2",    level_4,  0,        level_4);
colors(end+1) = createColor("pink dunkel 3",    level_3,  0,        level_3);
colors(end+1) = createColor("pink dunkel 4",    level_2,  0,        level_2);
colors(end+1) = createColor("pink hell 1",      level_6,  level_2,  level_6);
colors(end+1) = createColor("pink hell 2",      level_6,  level_3,  level_6);
colors(end+1) = createColor("pink hell 3",      level_6,  level_4,  level_6);
colors(end+1) = createColor("pink hell 4",      level_6,  level_5,  level_6);

colors(end+1) = createColor("weiss",            level_6,  level_6,  level_6);
colors(end+1) = createColor("weiss dunkel 1",   level_5,  level_5,  level_5);
colors(end+1) = createColor("weiss dunkel 2",   level_4,  level_4,  level_4);
colors(end+1) = createColor("weiss dunkel 3",   level_3,  level_3,  level_3);
colors(end+1) = createColor("weiss dunkel 4",   level_2,  level_2,  level_2);
colors(end+1) = createColor("schwarz",          0,        0,        0);

%colors(end+1) = createColor("hellblau", 124, 124, 255);
%colors(end+1) = createColor("ocker", 150, 128, 70);

endfunction
