fileID = fopen('output.dat','r');
sig_1=fread(fileID);
plot(sig_1);
fclose(fileID);