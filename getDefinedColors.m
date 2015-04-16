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
colors(1) = createColor('braun_01', 189, 140, 9);
colors(end+1) = createColor('braun_02', 143, 110, 20);
colors(end+1) = createColor('braun_03', 150, 125, 59);
colors(end+1) = createColor('braun_04', 188, 156, 70);
colors(end+1) = createColor('braun_05', 208,167, 55);
colors(end+1) = createColor('braun_06', 193, 150, 33);
colors(end+1) = createColor('braun_07', 184, 116, 18);
colors(end+1) = createColor('braun_08', 140, 84, 4);
colors(end+1) = createColor('braun_09', 124, 88, 36);
colors(end+1) = createColor('braun_10', 162, 126, 76);
colors(end+1) = createColor('braun_11', 181, 114, 18);
colors(end+1) = createColor('braun_12', 148, 73, 7);
colors(end+1) = createColor('braun_13', 104, 60, 22);
colors(end+1) = createColor('braun_14', 145, 105, 69);
colors(end+1) = createColor('braun_15', 172, 111, 57);
colors(end+1) = createColor('braun_16', 169, 95, 28);
colors(end+1) = createColor('braun_17', 130, 67, 6);
colors(end+1) = createColor('braun_18', 130, 102, 75);
colors(end+1) = createColor('braun_19', 179, 97, 0);
colors(end+1) = createColor('braun_20', 147, 80, 0);
colors(end+1) = createColor('braun_21', 123, 67, 0);
colors(end+1) = createColor('braun_22', 118, 78, 31);
colors(end+1) = createColor('braun_23', 152, 95, 27);
colors(end+1) = createColor('braun_24', 200, 145, 38);
colors(end+1) = createColor('braun_25', 177, 137, 0);
colors(end+1) = createColor('braun_26', 135, 106, 3);
colors(end+1) = createColor('braun_27', 155, 139, 0);
colors(end+1) = createColor('braun_28', 160, 110, 14);
colors(end+1) = createColor('braun_29', 135, 97, 23);
colors(end+1) = createColor('braun_30', 155, 114, 34);
colors(end+1) = createColor('braun_31', 175, 108, 42);
colors(end+1) = createColor('braun_32', 221, 139, 58);
colors(end+1) = createColor('braun_33', 155, 93, 31);
colors(end+1) = createColor('braun_34', 151, 117, 83);
colors(end+1) = createColor('braun_35', 195, 147, 99);
colors(end+1) = createColor('braun_36', 132, 97, 49);
colors(end+1) = createColor('braun_37', 115, 73, 16);
colors(end+1) = createColor('braun_38', 186, 133, 60);
colors(end+1) = createColor('braun_39', 155, 95, 14);
colors(end+1) = createColor('braun_40', 119, 73, 0);
colors(end+1) = createColor('braun_41', 182, 126, 0);
colors(end+1) = createColor('braun_42', 135, 94, 0);
colors(end+1) = createColor('braun_43', 143, 120, 60);
colors(end+1) = createColor('braun_44', 179, 140, 35);
colors(end+1) = createColor('braun_45', 211, 142, 62);
colors(end+1) = createColor('braun_46', 123, 90, 53);




colors(end+1) = createColor('orange',          level_6,   level_middle,      0);
colors(end+1) = createColor('orange_dunkel_1', level_5,   level_middle/5*4,  0);
colors(end+1) = createColor('orange_dunkel_2', level_4,   level_middle/5*3,  0);
colors(end+1) = createColor('orange_dunkel_3', level_3,   level_middle/5*2,  0);
colors(end+1) = createColor('orange_dunkel_4', level_2,   level_middle/5*1,  0);
colors(end+1) = createColor('orange_hell_1',   level_6,   level_middle + level_middle/5*1,      level_2);
colors(end+1) = createColor('orange_hell_2',   level_6,   level_middle + level_middle/5*2,      level_3);
colors(end+1) = createColor('orange_hell_3',   level_6,   level_middle + level_middle/5*3,      level_4);
colors(end+1) = createColor('orange_hell_4',   level_6,   level_middle + level_middle/5*4,      level_5);

colors(end+1) = createColor('blau',            0,         0,        level_6);
colors(end+1) = createColor('blau_dunkel_1',   0,         0,        level_5);
colors(end+1) = createColor('blau_dunkel_2',   0,         0,        level_4);
colors(end+1) = createColor('blau_dunkel_3',   0,         0,        level_3);
colors(end+1) = createColor('blau_dunkel_4',   0,         0,        level_2);
colors(end+1) = createColor('blau_hell_1',     level_2,   level_2,  level_6);
colors(end+1) = createColor('blau_hell_2',     level_3,   level_3,  level_6);
colors(end+1) = createColor('blau_hell_3',     level_4,   level_4,  level_6);
colors(end+1) = createColor('blau_hell_4',     level_5,   level_5,  level_6);

colors(end+1) = createColor('gruen',            0,        level_6,  0);
colors(end+1) = createColor('gruen_dunkel_1',   0,        level_5,  0);
colors(end+1) = createColor('gruen_dunkel_2',   0,        level_4,  0);
colors(end+1) = createColor('gruen_dunkel_3',   0,        level_3,  0);
colors(end+1) = createColor('gruen_dunkel_4',   0,        level_2,  0);
colors(end+1) = createColor('gruen_hell_1',     level_2,  level_6,  level_2);
colors(end+1) = createColor('gruen_hell_2',     level_3,  level_6,  level_3);
colors(end+1) = createColor('gruen_hell_3',     level_4,  level_6,  level_4);
colors(end+1) = createColor('gruen_hell_4',     level_5,  level_6,  level_5);

colors(end+1) = createColor('rot',              level_6,  0,        0);
colors(end+1) = createColor('rot_dunkel_1',     level_5,  0,        0);
colors(end+1) = createColor('rot_dunkel_2',     level_4,  0,        0);
colors(end+1) = createColor('rot_dunkel_3',     level_3,  0,        0);
colors(end+1) = createColor('rot_dunkel_4',     level_2,  0,        0);
colors(end+1) = createColor('rot_hell_1',       level_6,  level_2,  level_2);
colors(end+1) = createColor('rot_hell_2',       level_6,  level_3,  level_3);
colors(end+1) = createColor('rot_hell_3',       level_6,  level_4,  level_4);
colors(end+1) = createColor('rot_hell_4',       level_6,  level_5,  level_5);

colors(end+1) = createColor('gelb',             level_6,  level_6,  0);
colors(end+1) = createColor('gelb_dunkel_1',    level_5,  level_5,  0);
colors(end+1) = createColor('gelb_dunkel_2',    level_4,  level_4,  0);
colors(end+1) = createColor('gelb_dunkel_3',    level_3,  level_3,  0);
colors(end+1) = createColor('gelb_dunkel_4',    level_2,  level_2,  0);
colors(end+1) = createColor('gelb_hell_1',      level_6,  level_6,  level_2);
colors(end+1) = createColor('gelb_hell_2',      level_6,  level_6,  level_3);
colors(end+1) = createColor('gelb_hell_3',      level_6,  level_6,  level_4);
colors(end+1) = createColor('gelb_hell_4',      level_6,  level_6,  level_5);

colors(end+1) = createColor('tuerkis',          0,        level_6,  level_6);
colors(end+1) = createColor('tuerkis_dunkel_1', 0,        level_5,  level_5);
colors(end+1) = createColor('tuerkis_dunkel_2', 0,        level_4,  level_4);
colors(end+1) = createColor('tuerkis_dunkel_3', 0,        level_3,  level_3);
colors(end+1) = createColor('tuerkis_dunkel_4', 0,        level_2,  level_2);
colors(end+1) = createColor('tuerkis_hell_1',   level_2,  level_6,  level_6);
colors(end+1) = createColor('tuerkis_hell_2',   level_3,  level_6,  level_6);
colors(end+1) = createColor('tuerkis_hell_3',   level_4,  level_6,  level_6);
colors(end+1) = createColor('tuerkis_hell_4',   level_5,  level_6,  level_6);

colors(end+1) = createColor('pink',             level_6,  0,        level_6);
colors(end+1) = createColor('pink_dunkel_1',    level_5,  0,        level_5);
colors(end+1) = createColor('pink_dunkel_2',    level_4,  0,        level_4);
colors(end+1) = createColor('pink_dunkel_3',    level_3,  0,        level_3);
colors(end+1) = createColor('pink_dunkel_4',    level_2,  0,        level_2);
colors(end+1) = createColor('pink_hell_1',      level_6,  level_2,  level_6);
colors(end+1) = createColor('pink_hell_2',      level_6,  level_3,  level_6);
colors(end+1) = createColor('pink_hell_3',      level_6,  level_4,  level_6);
colors(end+1) = createColor('pink_hell_4',      level_6,  level_5,  level_6);

colors(end+1) = createColor('weiss',            level_6,  level_6,  level_6);
colors(end+1) = createColor('weiss_dunkel_1',   level_5,  level_5,  level_5);
colors(end+1) = createColor('weiss_dunkel_2',   level_4,  level_4,  level_4);
colors(end+1) = createColor('weiss_dunkel_3',   level_3,  level_3,  level_3);
colors(end+1) = createColor('weiss_dunkel_4',   level_2,  level_2,  level_2);
colors(end+1) = createColor('schwarz',          0,        0,        0);

%colors(end+1) = createColor('hellblau', 124, 124, 255);
%colors(end+1) = createColor('ocker', 150, 128, 70);

end
