EXIT_STATE = 0;
START_STATE = 1;
STANDBY_STATE = 2;
SCANON_STATE = 3;
SCANOFF_STATE = 4;
SAMPLER_STATE = 5;
SETREGS_STATE = 6;

%% ------------------------------------------------------------------------
%%Command seq:
global global_serial_gui;
global t_inicial;
global acumulador_global_1;
global acumulador_global_1_n;
global acumulador_global_1_array;

acumulador_global_1 = 0;
acumulador_global_1_n =1;

acumulador_global_1_array = [];

fclose(global_serial_gui);%%Force to close
fopen(global_serial_gui);
fwrite(global_serial_gui, SCANON_STATE,'uint8');
t_inicial = clock;

%% ------------------------------------------------------------------------
fclose(global_serial_gui);%%Force to close
fopen(global_serial_gui);
fwrite(global_serial_gui, SCANOFF_STATE,'uint8');

%% ------------------------------------------------------------------------
%%END
fclose(global_serial_gui);

%% ------------------------------------------------------------------------
fileID = fopen('output_1.bin','w');
fwrite(fileID, acumulador_global_1_array, 'float');
fclose(fileID);

%% ------------------------------------------------------------------------
fileID = fopen('output_1.bin', 'r');
% acumulador_global_1_array = fread(fileID);
plot(fread(fileID, acumulador_global_1_n, 'float'));
fclose(fileID);