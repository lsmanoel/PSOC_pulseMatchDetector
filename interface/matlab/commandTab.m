EXIT_STATE = 0;
START_STATE = 1;
STANDBY_STATE = 2;
SCANON_STATE = 3;
SCANOFF_STATE = 4;
SAMPLER_STATE = 5;
SETREGS_STATE = 6;

%%-------------------------------------------------------------------------
global global_serial_gui;

global acumulador_global_n;

global acumulador_det_1_global;
global acumulador_det_1_global_array;
global delta_t_det_1_global_array;

global acumulador_det_2_global;
global acumulador_det_2_global_array;
global delta_t_det_2_global_array;

global acumulador_match_global;
global acumulador_match_global_array;
global delta_t_match_global_array;

global t_inicial;
global windowSize;


%% ------------------------------------------------------------------------
%%Config:
windowSize = 16;

%% ------------------------------------------------------------------------
%%SCAN ON command:
acumulador_global_n =1;

acumulador_det_1_global = 0;
acumulador_det_1_global_array = [];
delta_t_det_1_global_array = [];

acumulador_det_2_global = 0;
acumulador_det_2_global_array = [];
delta_t_det_2_global_array = [];

acumulador_match_global = 0;
acumulador_match_global_array = [];
delta_t_match_global_array = [];

fclose(global_serial_gui);%%Force to close
fopen(global_serial_gui);
fwrite(global_serial_gui, SCANON_STATE,'uint8');

t_inicial = clock;

%% ------------------------------------------------------------------------
%%SCAN OFF command:
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