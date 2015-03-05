function getColorStatistics (filename)
% getColorStatistics  main function to process a given file
%
% SYNOPSIS: getColorStatistics(filename)
%
% INPUT filename: path to the image to process
%
% created by: Marc V. Kohaupt
% Licence: Creative Commons Zero / public domain
% last change and history: see version control system
% created with Octave 3.8.2 i686-w64-mingw32

[number_of_colors, uniqueLab, uniqueLabWithCount, count] = getColorInformation(filename);

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

printf('Distribution of pre-defined colors:\n');

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
