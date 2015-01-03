function colorStatsMain (filename)

% read image file
[RGB,map,alpha] = imread(filename);
% TODO: remove any pixel that has alpha channel set.

% convert RGB to L*a*b*-Colorspace
Lab = RGB2Lab(RGB);

% convert 3D Array to 2D Array (just a list of 3x color)
array_size_x = size(Lab)(1);
array_size_y = size(Lab)(2);
Lab = reshape(Lab, [array_size_x * array_size_y, 3]);

% get a list of all our colors defined.
colors = getDefinedColors();

% iterate through each pixel in the picture
for i = 1:length(Lab) %% PERF: better idea to iterate through array than "for"?
  col = Lab(i,:);
  
  % fetch the nearest color (use a cache proxy which looks up the color if already calculated instead of calculting it again)
  nearestColor = cache_getNearestColor(col);
  %printf('Color is %d\n', nearestColor);
  
  colors(nearestColor).count = colors(nearestColor).count+1; %% PERF: ++ instead?
end

% print the percentage of each color
for i = 1:length(colors)
  totalCount = sum(cat(1, colors.count));
  percentage = colors(i).count / totalCount * 100;
  printf('%10s: %3d%%\n', colors(i).name, percentage);
end

endfunction
