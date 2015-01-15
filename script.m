%%% configuration %%%
picture_directory = "./pics/";
profiling.on = 0;

%%% code %%%
profile off;
if (profiling.on == 1)
  profile on;
end

% get cputime at beginning of script for overall performance measurement
stopwatch.batch.begin = cputime();

% iterate through all files in the given directory
files = dir([picture_directory '*.png']);
for file = files'
  filename = [picture_directory file.name];

  printf("%s \t Processing \t%s ...\n", datestr(now, 'YYYY-mm-DD HH:MM:SS'), filename)
  fflush(stdout);  % flush stdout buffer as the next operation takes probably long time

  stopwatch.file.begin = cputime();
  colorStatsMain(filename);
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