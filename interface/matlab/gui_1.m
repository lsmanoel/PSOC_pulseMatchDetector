function varargout = gui_1(varargin)
% GUI_1 MATLAB code for gui_1.fig
%      GUI_1, by itself, creates a new GUI_1 or raises the existing
%      singleton*.
%
%      H = GUI_1 returns the handle to a new GUI_1 or the handle to
%      the existing singleton*.
%
%      GUI_1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_1.M with the given input arguments.
%
%      GUI_1('Property','Value',...) creates a new GUI_1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_1

% Last Modified by GUIDE v2.5 05-Sep-2017 17:52:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_1_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_1_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before gui_1 is made visible.
function gui_1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_1 (see VARARGIN)

global global_serial_gui;
global_serial_gui=serial('COM9');

set(global_serial_gui, 'BaudRate', 57600);

global_serial_gui.BytesAvailableFcnMode='byte';
global_serial_gui.BytesAvailableFcn=@dataReadFcn;

sizeBuffer=32;
global_serial_gui.BytesAvailableFcnCount=sizeBuffer;
global_serial_gui.InputBufferSize=sizeBuffer;

global out;
global maxSize;
maxSize=2^20;
out=zeros(1,maxSize);

% Choose default command line output for gui_1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in fopenButton.
function fopenButton_Callback(hObject, eventdata, handles)
% hObject    handle to fopenButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global global_serial_gui;
fclose(global_serial_gui);
fopen(global_serial_gui);

% --- Executes during object creation, after setting all properties.
function fopenButton_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fopenButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in fcloseButton.
function fcloseButton_Callback(hObject, eventdata, handles)
% hObject    handle to fcloseButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global global_serial_gui;
fclose(global_serial_gui);
fclose(instrfind);
fclose(global_serial_gui);

% --- Executes on selection change in ModoOpPopUp.
function ModoOpPopUp_Callback(hObject, eventdata, handles)
% hObject    handle to ModoOpPopUp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns ModoOpPopUp contents as cell array
%        contents{get(hObject,'Value')} returns selected item from ModoOpPopUp

% Determine the selected data set.
str = get(hObject, 'String');
val = get(hObject,'Value');
% Set current data to the selected data set.
switch str{val};
case 'Modo Fluxo' % User selects peaks.
    figure(1)
    hold off;
%     figure(2)
%     hold off;
    
case 'Modo Dinamico' % User selects membrane.
    figure(1)
    hold on;
%     figure(2)
%     hold on;
end

% Save the handles structure.
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function ModoOpPopUp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ModoOpPopUp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in BufferSizePopUp.
function BufferSizePopUp_Callback(hObject, eventdata, handles)
% hObject    handle to BufferSizePopUp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns BufferSizePopUp contents as cell array
%        contents{get(hObject,'Value')} returns selected item from BufferSizePopUp
global global_serial_gui;
str = get(hObject, 'String');
val = get(hObject,'Value');
sizeBuffer=32;

% Set current data to the selected data set.
switch str{val};
    case '16_bytes' % User selects membrane
        sizeBuffer=16;
    case '32_bytes' % User selects membrane
        sizeBuffer=32;
    case '64_bytes' % User selects membrane 
        sizeBuffer=64;
    case '128_bytes' % User selects membrane
        sizeBuffer=128;
    case '256_bytes' % User selects membrane
        sizeBuffer=256;
    case '512_bytes' % User selects membrane
        sizeBuffer=512;
end

fclose(global_serial_gui);
global_serial_gui.BytesAvailableFcnCount=sizeBuffer;
global_serial_gui.InputBufferSize=sizeBuffer;

% --- Executes during object creation, after setting all properties.
function BufferSizePopUp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BufferSizePopUp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ZerarBufferButton.
function ZerarBufferButton_Callback(hObject, eventdata, handles)
% hObject    handle to ZerarBufferButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global out;      
global countBufferIN_1;
global maxSize;
out=zeros(1, maxSize);
countBufferIN_1=0;

% --- Executes on button press in RemoteConfigFcn.
function RemoteConfigFcn_Callback(hObject, eventdata, handles)
% hObject    handle to RemoteConfigFcn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global global_serial_gui;
fwrite(global_serial_gui, 3,'uint8');


% --- Executes during object creation, after setting all properties.
function RemoteConfigFcn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RemoteConfigFcn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in ScanOnButton.
function ScanOnButton_Callback(hObject, eventdata, handles)
% hObject    handle to ScanOnButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global global_serial_gui;
fwrite(global_serial_gui, 4,'uint8');
%fread(global_serial_gui);%Clear Buffer

% --- Executes on button press in ScanOffButton.
function ScanOffButton_Callback(hObject, eventdata, handles)
% hObject    handle to ScanOffButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global global_serial_gui;
fwrite(global_serial_gui, 5,'uint8');
