% script  main file to compute the CIELAB 2000 color difference between given files and predefined colors.
% iterates through the pics directory and processes all files in sequence
%
% created by: Marc V. Kohaupt
% Licence: Creative Commons Zero / public domain
% last change and history: see version control system
% created with Octave 3.8.2 i686-w64-mingw32

%%%%%%%%%%%%%%%%%%%%%
%%% configuration %%%
%%%%%%%%%%%%%%%%%%%%%

% the directory where the pictures are stored
picture_directory = "./pics/";

% whether the code should be profiled regarding CPU time needed
% (the cpu time for the whole batch and per file will always be logged)
profiling.on = 0;


%%%%%%%%%%%%
%%% code %%%
%%%%%%%%%%%%

profile off;
if (profiling.on == 1)
  profile on;
end

% get cputime at beginning of script for overall performance measurement
stopwatch.batch.begin = cputime();

% iterate through all files in the given directory
files = dir([picture_directory '*.*']);
for file = files'
  filename = [picture_directory file.name];

  printf("%s \t Processing \t%s ...\n", datestr(now, 'YYYY-mm-DD HH:MM:SS'), filename)
  fflush(stdout);  % flush stdout buffer as the next operation takes probably long time

  stopwatch.file.begin = cputime();
  
  
  processPicture(filename);
  
 
  stopwatch.file.end = cputime();

  msg = sprintf('%s\t Processed \t%s\t in \t%f\t seconds.\n', datestr(now, 'YYYY-mm-DD HH:MM:SS'), filename, stopwatch.file.end - stopwatch.file.begin);
  printf(msg);
  logfile("performance.txt", msg);

  printf("\n");
end

stopwatch.batch.end = cputime();
printf('Processed whole batch in %f seconds.\n', stopwatch.batch.end - stopwatch.batch.begin);

if (profiling.on == 1)
  profile off;
  data = profile("info");
  profshow(data, 10);
end