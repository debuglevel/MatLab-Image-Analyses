function nearestColor_index = getNearestColor (color)

% get the list of our colors defined.
definedColors = getDefinedColorsLab();

% iterate through each color defined, get its Lab-color, and calculate the DeltaE2000 to our given pixel-color
for i = 1:length(definedColors)
  labColor(i,:) = [definedColors(i).L, definedColors(i).a, definedColors(i).b];
end
color = repmat(color, length(labColor), 1);
colorDistances = deltaE2000(color, labColor);

% get the index of the minimum color distance
nearestColor_index = find(colorDistances == min(colorDistances));

endfunction