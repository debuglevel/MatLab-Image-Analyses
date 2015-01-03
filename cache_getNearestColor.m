function [retval] = cache_getNearestColor (Lab)

  persistent cachedData;
  if isempty(cachedData)
    cachedData = zeros(0,4);
  end
  
  L=Lab(1);
  a=Lab(2);
  b=Lab(3);
  
  try
    %fetch data
    
    %% PERF: == as well a & consume a lot of time (24s vs 6s)
    cached_row = ...
      cachedData(            ...
        cachedData(:,1)==L & ...
        cachedData(:,2)==a & ...
        cachedData(:,3)==b   ...
        , :);
    
    retval = cached_row(4);
 
  catch
    retval = getNearestColor(Lab);
    
    new_row = [L,a,b,retval]; 
    cachedData = [new_row; cachedData];
  end


endfunction
