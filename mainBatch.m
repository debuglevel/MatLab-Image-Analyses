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

% uncomment if the environment should be cleared before execution
clear;

% the directory where the images are stored
images_directory = "./pics/";

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
files = dir([images_directory '*.*']);
for file = files'
  filename = [images_directory file.name];

  printf('%s \t Processing \t%s ...\n', datestr(now, 'YYYY-mm-DD HH:MM:SS'), filename)
  fflush(stdout);  % flush stdout buffer as the next operation takes probably long time

  stopwatch.file.begin = cputime();
  images(end+1) = processImage(filename);
  stopwatch.file.end = cputime();
  stopwatch.file.duration = stopwatch.file.end - stopwatch.file.begin;
  images(end).duration = stopwatch.file.duration;

  msg = sprintf('%s\t Processed \t%s\t in \t%f\t seconds.\n', datestr(now, 'YYYY-mm-DD HH:MM:SS'), filename, stopwatch.file.end - stopwatch.file.begin);
  printf(msg);
  logfile('performance.txt', msg);

  printf('\n');
end

printImagesStructArray(images);

stopwatch.batch.end = cputime();
printf('Processed whole batch in %f seconds.\n', stopwatch.batch.end - stopwatch.batch.begin);

if (profiling.on == 1)
  profile off;
  data = profile('info');
  profshow(data, 10);
end