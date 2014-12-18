%profile off

profile on
batch_t = cputime();

colorStatsMain "pics/dunkelblau.png";

printf('Total cpu time: %f seconds\n', cputime-batch_t);
profile off
data = profile ("info");
profshow (data, 10);
return;

batch_t = cputime();

files = dir('dir/*.png');
for file = files'
    printf("Processing %s...", file.name)
    fflush(stdout)
    
    file_t = cputime();
    colorStatsMain(file.name);
    printf('File cpu time: %f seconds\n', cputime-file_t);
    
    printf("");
end

printf('Total cpu time: %f seconds\n', cputime-batch_t);



%profile off
%data = profile ("info");
%profshow (data, 10);