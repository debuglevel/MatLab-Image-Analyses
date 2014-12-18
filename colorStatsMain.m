function colorStatsMain (filename)

[RGB,map,alpha] = imread(filename);
% TODO: remove any color that has alpha channel set.
Lab = RGB2Lab(RGB);

% 3D Array to 2D Array (just a list of 3x color)
x = size(Lab)(1);
y = size(Lab)(2);
Lab = reshape(Lab, [x*y, 3]);

colors = getDefinedColors();
%colors(:).count = 0;

% foreach color in picture:
for i = 1:length(Lab) %% PERF: better idea to iterate through array than "for"?
  %sprintf('Processing pixel no. %d', i);
  col = Lab(i,:);
  
  nearestColor = cache_getNearestColor(col);
  %sprintf('Color is %s', nearestColor.name);
  %sprintf('Color is %d', nearestColor);
  colors(nearestColor).count = colors(nearestColor).count+1; %% PERF: ++ instead?
  %sprintf('');
end

%deltaE2000(Lab);

for i = 1:length(colors)
  sprintf('%s: %d', colors(i).name, colors(i).count)
end

endfunction
