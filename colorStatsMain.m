function colorStatsMain (filename)

% read image file
[RGB,map,alpha] = imread(filename);

% convert RGB to L*a*b*-Colorspace
Lab = RGB2Lab(RGB);

% convert 3D Array to 2D Array (just a list of 3x color)
array_size_x = size(Lab)(1);
array_size_y = size(Lab)(2);
Lab = reshape(Lab, [array_size_x * array_size_y, 3]);

% Remove transparent values. Keep only those rows where alpha is not 0 (i.e. 100% transparent).
alpha = reshape(alpha, [array_size_x * array_size_y, 1]);
Lab = Lab(alpha != 0, :);

% get a list of each colors best matching defined color.
nearestColors = getNearestColor(Lab);

[nearestColors, unused, count] = unique(nearestColors, 'rows');
nearestColors = [nearestColors accumarray(count,1)];

% get a list of all our colors defined.
definedColors = getDefinedColorsLab();
totalCount = sum(nearestColors(:, 4));
for i = 1:length(definedColors)
  
  L = definedColors(i).L;
  a = definedColors(i).a;
  b = definedColors(i).b;
  
  nearestColor = ...    
  nearestColors(            ...
    nearestColors(:,1)==L & ...
    nearestColors(:,2)==a & ...
    nearestColors(:,3)==b   ...
    , :);
    
  % check if the defined color is used at all  
  if (size(nearestColor, 1) != 0)
    count = nearestColor(4);
    
    %printf('%10s: %d\n', definedColors(i).name, count);
    
    percentage = count / totalCount * 100;
    printf('%10s: %3d%%\n', definedColors(i).name, percentage);
  end
end

endfunction
