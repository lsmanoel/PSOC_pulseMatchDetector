clear all
%% ------------------------------------------------------------------------
%%Define Commands:
EXIT_STATE = 0;
START_STATE = 1;
STANDBY_STATE = 2;
SCANON_STATE = 3;
SCANOFF_STATE = 4;
SAMPLER_STATE = 5;
SETREGS_STATE = 6;

%% ------------------------------------------------------------------------
%%Clear Serial:
% global global_serial;
% 
% if global_serial
%     fclose(global_serial);
%     fclose(instrfind);
%     delete(global_serial);
%     clear global_serial;
% end

%% ------------------------------------------------------------------------
%%Serial Config:
global global_serial;
global global_serial_sizeBuffer;
global global_serial_Channel_N;
global global_serial_Channel_sizeBuffer;
global global_serial_Channel_width;

global_serial=serial('COM8');

set(global_serial, 'BaudRate', 57600);

global_serial.BytesAvailableFcnMode='byte';
global_serial.BytesAvailableFcn=@dataReadFcn;

global_serial_Channel_width = 2;
global_serial_Channel_N = 3;
global_serial_Channel_sizeBuffer = 2;
global_serial_sizeBuffer = global_serial_Channel_N*global_serial_Channel_sizeBuffer*global_serial_Channel_width;

global_serial.BytesAvailableFcnCount=global_serial_sizeBuffer;
global_serial.InputBufferSize=global_serial_sizeBuffer;

fclose(global_serial);
fopen(global_serial);
fwrite(global_serial, SCANOFF_STATE,'uint8');
fclose(global_serial);


%% ------------------------------------------------------------------------
%%Match Counter - Declarations:
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
global t2;
    
global windowSize;

%% ------------------------------------------------------------------------
disp('Interface Configurada!')
return 
%% ------------------------------------------------------------------------
%%SCAN ON command:

%%Config:
windowSize = 100;
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

fclose(global_serial);%%Force to close
fopen(global_serial);
fwrite(global_serial, SCANON_STATE,'uint8');

t_inicial = clock;
t2 = clock;
%% ------------------------------------------------------------------------
%%SCAN OFF command:
fclose(global_serial);%%Force to close
fopen(global_serial);
fwrite(global_serial, SCANOFF_STATE,'uint8');

%% ------------------------------------------------------------------------
%START
fopen(global_serial);
%% ------------------------------------------------------------------------
%%END
fclose(global_serial);

%% ------------------------------------------------------------------------
fileID = fopen('output_1.bin','w');
fwrite(fileID, acumulador_global_1_array, 'float');
fclose(fileID);

%% ------------------------------------------------------------------------
fileID = fopen('output_1.bin', 'r');
% acumulador_global_1_array = fread(fileID);
plot(fread(fileID, acumulador_global_1_n, 'float'));
fclose(fileID);