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
[alpha_size_x, alpha_size_y] = size(alpha);
if (alpha_size_x != 0 && alpha_size_y != 0)
  alpha = reshape(alpha, [array_size_x * array_size_y, 1]);
  Lab = Lab(alpha != 0, :);
end

% NEW: aggregate same colors and count them

% Lab:        A x 3 matrix (A pixels; pixel = 3 columns of L*a*b color information)
% uniqueLab:  B x 3 matrix (B unique pixels, sorted ascending)
% index:      A x 1 vector (index vector "where is this value in the new vector?")
[uniqueLab, unused, index] = unique(Lab, 'rows');
% aggregatedCounts:   B x 1 vector (count of the B unique pixels)
count = [accumarray(index, 1)];
% uniqueLabWithCount: B x 4 matrix (B unique pixels and their count)
uniqueLabWithCount = [uniqueLab count];


% get a list of each colors best matching defined color.

% nearestColor:    B x 3 matrix (uniqueLab transformed to their nearest L*a*b colors, not unique, same sorting)
nearestColor = getNearestColor(uniqueLab);
% nearestColorWithCount: B x 4 matrix (nearest colors and their count)
nearestColorWithCount = [nearestColor count];

% uniqueNearestColorWithCount: C x 4 matrix (unique nearest colors and their count)
[uniqueNearestColor, unused, index] = unique(nearestColor, 'rows');
uniqueNearestColorWithCount = [uniqueNearestColor accumarray(index, count)];

% get a list of all our colors defined.
definedColors = getDefinedColorsLab();
totalCount = sum(uniqueNearestColorWithCount(:, 4));
for i = 1:length(definedColors)
  
  L = definedColors(i).L;
  a = definedColors(i).a;
  b = definedColors(i).b;
  
  color = ...    
  uniqueNearestColorWithCount(            ...
    uniqueNearestColorWithCount(:,1)==L & ...
    uniqueNearestColorWithCount(:,2)==a & ...
    uniqueNearestColorWithCount(:,3)==b   ...
    , :);
    
  % check if the defined color is used at all  
  if (size(color, 1) != 0)
    count = color(4);
    
    %printf('%10s: %d\n', definedColors(i).name, count);
    
    percentage = count / totalCount * 100;
    printf('%10s: %3d%%\n', definedColors(i).name, percentage);
  end
end

endfunction
