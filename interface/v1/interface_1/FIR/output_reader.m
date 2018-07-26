fileID = fopen('output.dat','r');
sig_1=fread(fileID);
plot(sig_1);
fclose(fileID);
sig_1=sig_1(45000:50000);
sig_1=sig_1(1:fs);