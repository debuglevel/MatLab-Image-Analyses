function nc_index = getNearestColor (color)

colors = getDefinedColors();

for i = 1:length(colors)
  [L,a,b] = RGB2Lab(colors(i).r, colors(i).g, colors(i).b);
  labColor = [L, a, b];
   
  colorDistance(i).name = colors.name;
  
  % big performance bottleneck: calculating deltaE2000 is incredible slow.
  % TODO: cache the results for a given color and fetch it instead of calculating
  colorDistance(i).distance = deltaE2000(color, labColor);
end

nearestColor.name = "invalid";
nearestColor.distance = 999999;

nc_index = 1;

for i = 1:length(colorDistance)
  %if (colorDistance(i).distance < nearestColor.distance)
  %  nearestColor = colorDistance(i);
  %end
  if (colorDistance(i).distance < colorDistance(nc_index).distance)
    nc_index = i;
  end
end

endfunction