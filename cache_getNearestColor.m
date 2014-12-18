function [retval] = cache_getNearestColor (Lab)

  persistent cachedData;
  if isempty(cachedData)
    cachedData = zeros(0,4);
  end
  
  L=Lab(1); %% PERF: maybe passing L,a,b into the func is better?
  a=Lab(2);
  b=Lab(3);
  
  try %% PERF: maybe try-catch consumes too much time?
    %fetch data
    
    %% PERF: == as well a & consume a lot of time (24s vs 6s)
    cached_row = ...
      cachedData(            ...
        cachedData(:,1)==L & ... %% PEFF: does matlab do a shortcut on 0 (& 1) = 0?
        cachedData(:,2)==a & ...
        cachedData(:,3)==b   ...
        , :);
    
    retval = cached_row(4); %%PEF: maybe the row could be directly accesses instead of creating a new row?
 
  catch
    retval = getNearestColor(Lab);
    
    new_row = [L,a,b,retval]; 
    cachedData = [new_row; cachedData];
  end


endfunction
