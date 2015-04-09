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
level_middle = 255 / 2;
level_4 = 255 / 5 * 3;
level_5 = 255 / 5 * 4;
level_6 = 255 / 5 * 5;  % maximum intensity = full color

% temporary set brown hues
colors(end+1) = createColor("braun 01", 189, 140, 9);
colors(end+1) = createColor("braun 02", 143, 110, 20);
colors(end+1) = createColor("braun 03", 150, 125, 59);
colors(end+1) = createColor("braun 04", 188, 156, 70);
colors(end+1) = createColor("braun 05", 208,167, 55);
colors(end+1) = createColor("braun 06", 193, 150, 33);
colors(end+1) = createColor("braun 07", 184, 116, 18);
colors(end+1) = createColor("braun 08", 140, 84, 4);
colors(end+1) = createColor("braun 09", 124, 88, 36);
colors(end+1) = createColor("braun 10", 162, 126, 76);
colors(end+1) = createColor("braun 11", 181, 114, 18);
colors(end+1) = createColor("braun 12", 148, 73, 7);
colors(end+1) = createColor("braun 13", 104, 60, 22);
colors(end+1) = createColor("braun 14", 145, 105, 69);
colors(end+1) = createColor("braun 15", 172, 111, 57);
colors(end+1) = createColor("braun 16", 169, 95, 28);
colors(end+1) = createColor("braun 17", 130, 67, 6);
colors(end+1) = createColor("braun 18", 130, 102, 75);
colors(end+1) = createColor("braun 19", 179, 97, 0);
colors(end+1) = createColor("braun 20", 147, 80, 0);
colors(end+1) = createColor("braun 21", 123, 67, 0);
colors(end+1) = createColor("braun 22", 118, 78, 31);
colors(end+1) = createColor("braun 23", 152, 95, 27);
colors(end+1) = createColor("braun 24", 200, 145, 38);
colors(end+1) = createColor("braun 25", 177, 137, 0);
colors(end+1) = createColor("braun 26", 135, 106, 3);
colors(end+1) = createColor("braun 27", 155, 139, 0);
colors(end+1) = createColor("braun 28", 160, 110, 14);
colors(end+1) = createColor("braun 29", 135, 97, 23);
colors(end+1) = createColor("braun 30", 155, 114, 34);
colors(end+1) = createColor("braun 31", 175, 108, 42);
colors(end+1) = createColor("braun 32", 221, 139, 58);
colors(end+1) = createColor("braun 33", 155, 93, 31);
colors(end+1) = createColor("braun 34", 151, 117, 83);
colors(end+1) = createColor("braun 35", 195, 147, 99);
colors(end+1) = createColor("braun 36", 132, 97, 49);
colors(end+1) = createColor("braun 37", 115, 73, 16);
colors(end+1) = createColor("braun 38", 186, 133, 60);
colors(end+1) = createColor("braun 39", 155, 95, 14);
colors(end+1) = createColor("braun 40", 119, 73, 0);
colors(end+1) = createColor("braun 41", 182, 126, 0);
colors(end+1) = createColor("braun 42", 135, 94, 0);
colors(end+1) = createColor("braun 43", 143, 120, 60);
colors(end+1) = createColor("braun 44", 179, 140, 35);
colors(end+1) = createColor("braun 45", 211, 142, 62);
colors(end+1) = createColor("braun 46", 123, 90, 53);




colors(end+1) = createColor("orange",          level_6,   level_middle,      0);
colors(end+1) = createColor("orange dunkel 1", level_5,   level_middle/5*4,  0);
colors(end+1) = createColor("orange dunkel 2", level_4,   level_middle/5*3,  0);
colors(end+1) = createColor("orange dunkel 3", level_3,   level_middle/5*2,  0);
colors(end+1) = createColor("orange dunkel 4", level_2,   level_middle/5*1,  0);
colors(end+1) = createColor("orange hell 1",   level_6,   level_middle + level_middle/5*1,      level_2);
colors(end+1) = createColor("orange hell 2",   level_6,   level_middle + level_middle/5*2,      level_3);
colors(end+1) = createColor("orange hell 3",   level_6,   level_middle + level_middle/5*3,      level_4);
colors(end+1) = createColor("orange hell 4",   level_6,   level_middle + level_middle/5*4,      level_5);

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
