function [labColors] = getDefinedColorsLab ()

definedColors = getDefinedColors();

% iterate through each color defined and get its Lab-color
for i = 1:length(definedColors)
  [L,a,b] = RGB2Lab(definedColors(i).r, definedColors(i).g, definedColors(i).b);
  labColors(i) = createLabColor(definedColors(i).name, L, a, b);
end

endfunction
