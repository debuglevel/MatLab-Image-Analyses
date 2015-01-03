function nearestColor_index = getNearestColor (color)

% get the list of our colors defined.
colors = getDefinedColors();

% iterate through each color defined, get its Lab-color, and calculate the DeltaE2000 to our given pixel-color
for i = 1:length(colors)
  [L,a,b] = RGB2Lab(colors(i).r, colors(i).g, colors(i).b);
  labColor = [L, a, b];
   
  colorDistance(i).name = colors.name;
  colorDistance(i).distance = deltaE2000(color, labColor);
end

%global colorDistance;

nearestColor.name = "invalid";
nearestColor.distance = 999999;

% iterate through all calculated color distances and fetch the index of the minimum distance
nearestColor_index = 1;
for i = 1:length(colorDistance)
  if (colorDistance(i).distance < colorDistance(nearestColor_index).distance)
    nearestColor_index = i;
  end
end

endfunction