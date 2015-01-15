function labColors = getNearestColor (colors)

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
%logicals = (min(colorDistances) == colorDistances); % emmits a warning
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



%function nearestColor_index = getNearestColor (color)
%
%% get the list of our colors defined.
%definedColors = getDefinedColorsLab();
%
%% iterate through each color defined, get its Lab-color, and calculate the DeltaE2000 to our given pixel-color
%for i = 1:length(definedColors)
%  labColor(i,:) = [definedColors(i).L, definedColors(i).a, definedColors(i).b];
%end
%color = repmat(color, length(labColor), 1);
%colorDistances = deltaE2000(color, labColor);
%
%% get the index of the minimum color distance
%nearestColor_index = find(colorDistances == min(colorDistances));
%
%endfunction