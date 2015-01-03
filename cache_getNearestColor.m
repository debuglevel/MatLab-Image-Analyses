function [nearestColor_index] = cache_getNearestColor (Lab)

  persistent cachedData;  % variable will not be removed once the function exists but exist over all calls
  % create an empty lookup table with 4 columns (L,a,b,nearestColor_index)
  if isempty(cachedData)
    cachedData = zeros(0,4);
  end
  

  L=Lab(1);
  a=Lab(2);
  b=Lab(3);
  
  try
    % fetch data, if anything fails, the nearestColor was not calculated so far and an exception will be thrown
    
    %% PERF: "==" as well a "&" consume a lot of time (24s and 6s)
    cached_row = ...
      cachedData(            ...
        cachedData(:,1)==L & ...
        cachedData(:,2)==a & ...
        cachedData(:,3)==b   ...
        , :);
    
    nearestColor_index = cached_row(4); 
  catch
    % calculate the nearest color
    nearestColor_index = getNearestColor(Lab);
    
    new_row = [L,a,b,nearestColor_index]; 
    cachedData = [new_row; cachedData];
  end


endfunction
