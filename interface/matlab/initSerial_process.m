EXIT_STATE = 0;
START_STATE = 1;
STANDBY_STATE = 2;
SCANON_STATE = 3;
SCANOFF_STATE = 4;
SAMPLER_STATE = 5;
SETREGS_STATE = 6;

global global_serial_gui;
global global_serial_sizeBuffer;
global global_serial_Channel_N;
global global_serial_Channel_sizeBuffer;
global global_serial_Channel_width;

global_serial_gui=serial('COM8');

set(global_serial_gui, 'BaudRate', 57600);

global_serial_gui.BytesAvailableFcnMode='byte';
global_serial_gui.BytesAvailableFcn=@dataReadFcn;

global_serial_Channel_width = 2;
global_serial_Channel_N = 3;
global_serial_Channel_sizeBuffer = 2;
global_serial_sizeBuffer = global_serial_Channel_N*global_serial_Channel_sizeBuffer*global_serial_Channel_width;

global_serial_gui.BytesAvailableFcnCount=global_serial_sizeBuffer;
global_serial_gui.InputBufferSize=global_serial_sizeBuffer;

fclose(global_serial_gui);
fopen(global_serial_gui);
fwrite(global_serial_gui, SCANOFF_STATE,'uint8');
fclose(global_serial_gui);