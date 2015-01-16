function labColors = getNearestColor (colors)
% getNearestColor  gets a list of the nearest predefined L*a*b* colors
%
% SYNOPSIS: labColors = getNearestColor(colors)
%
% INPUT colors: L*a*b* colors to get the nearest color for (N x 3 matrix)
%
% OUTPUT color: N x 3 matrix where the original L*a*b* colors are replaced with their nearest L*a*b* color
%
% created by: Marc V. Kohaupt
% Licence: Creative Commons Zero / public domain
% last change and history: see version control system
% created with Octave 3.8.2 i686-w64-mingw32

[colorsCount, unused] = size(colors);

% get the list of our colors defined.
definedColors = getDefinedColorsLab();
definedColorsCount = length(definedColors);

% iterate through each color defined, get its Lab-color, and calculate the DeltaE2000 to our given pixel-color
for i = 1:length(definedColors)
  labColors(i,:) = [definedColors(i).L, definedColors(i).a, definedColors(i).b];
end


% reorganize the matrices:
%
%  A     B
% 1 1   9 9
% 2 2   8 8
% 3 3

% repeat each line definedColorsCount-times in sequence
colors = kron(colors, ones(definedColorsCount,1));
% repeat the whole matrix definedColorsCount-times
labColors = repmat(labColors, colorsCount, 1);

% result:
%
%  A     B
% 1 1   9 9
% 1 1   8 8
% 2 2   9 9
% 2 2   8 8
% 3 3   9 9
% 3 3   8 8



% calculcate the color distance of each pair
colorDistances = deltaE2000(colors, labColors); % 27 seconds
%colorDistances = cie00de(colors, labColors);   % 33 seconds
%colorDistances = cie94de(colors, labColors);   % 22 seconds
colorDistances = transpose(colorDistances);
% result:
%  A     B    Distance
% 1 1   9 9     1.2*
% 1 1   8 8     1.6
% 2 2   9 9     2.8
% 2 2   8 8     2.4*
% 3 3   9 9     3.2*
% 3 3   8 8     3.5

colorDistances = reshape(colorDistances, [], colorsCount);
% result:
% 1.2*  2.8   3.2*
% 1.6   2.4*  3.5

minimumColorDistance = min(colorDistances);
minimumColorDistanceEqualMatrix = repmat(minimumColorDistance, definedColorsCount, 1);
logicals = (minimumColorDistanceEqualMatrix == colorDistances);
% result:
% 1     0     1
% 0     1     0

logicals = reshape(logicals, 1, []);
% result:
% 1  0  0  1  1  0

labColors = labColors(logicals, :);
%  B
% 9 9
% 8 8
% 9 9
endfunction