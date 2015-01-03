function [] = logfile (fileName, msg)

fileHandler = fopen(fileName, 'a');

if fileHandler ~= -1
  fprintf(fileHandler, '%s\n', msg);
  fclose(fileHandler);
end

endfunction
