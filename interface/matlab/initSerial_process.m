global global_serial_gui;
global acumulador_global_1;
global acumulador_global_1_n;

EXIT_STATE = 0;
START_STATE = 1;
STANDBY_STATE = 2;
SCANON_STATE = 3;
SCANOFF_STATE = 4;
SAMPLER_STATE = 5;
SETREGS_STATE = 6;

acumulador_global_1 = 0;

acumulador_global_1_n =1;

global_serial_gui=serial('COM8');

set(global_serial_gui, 'BaudRate', 57600);

global_serial_gui.BytesAvailableFcnMode='byte';
global_serial_gui.BytesAvailableFcn=@dataReadFcn;

sizeBuffer=8;
global_serial_gui.BytesAvailableFcnCount=sizeBuffer;
global_serial_gui.InputBufferSize=sizeBuffer;

fclose(global_serial_gui);
fopen(global_serial_gui);
fwrite(global_serial_gui, SCANOFF_STATE,'uint8');
fclose(global_serial_gui);