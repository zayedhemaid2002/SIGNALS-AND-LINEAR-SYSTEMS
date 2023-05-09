function varargout = untitled(varargin)
%Made by students 
%Osama Al-Nahhal (120181040)
%Muhammed Al-Nueayzi (120190916)
%ZAYED HEMAID (120192324)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 02-Dec-2021 11:23:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Convolutionbtn.
function Convolutionbtn_Callback(hObject, eventdata, handles)
% hObject    handle to Convolutionbtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

t = eval(get(handles.tinput,'String'));
T = t(1)*2:0.01:t(end)*2;
a = str2num(get(handles.Ainput,'String'));
b = str2num(get(handles.Binput,'String'));
c = str2num(get(handles.Cinput,'String'));
f = eval(get(handles.functionInput,'String'));
h = hardlim(t+1)-hardlim(t-1);
y = conv(h,f);
axes(handles.ConvolutionPlotPlace);
plot(T,y);





% --- Executes on button press in plotbtn.
function plotbtn_Callback(hObject, eventdata, handles)
% hObject    handle to plotbtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

t = eval(get(handles.tinput,'String'));
a = str2num(get(handles.Ainput,'String'));
b = str2num(get(handles.Binput,'String'));
c = str2num(get(handles.Cinput,'String'));
f = inline(get(handles.functionInput,'String'));
axes(handles.OpFunctionPlotPlace);
plot(t,c.*f(a*(t+b)));
xlabel('t');
ylabel('scalled function');
grid;
axes(handles.functionPlotPlace);
plot(t,f(t));
xlabel('t');
ylabel('function');
grid;

function functionInput_Callback(hObject, eventdata, handles)
% hObject    handle to functionInput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of functionInput as text
%        str2double(get(hObject,'String')) returns contents of functionInput as a double


% --- Executes during object creation, after setting all properties.
function functionInput_CreateFcn(hObject, eventdata, handles)
% hObject    handle to functionInput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Ainput_Callback(hObject, eventdata, handles)
% hObject    handle to Ainput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ainput as text
%        str2double(get(hObject,'String')) returns contents of Ainput as a double


% --- Executes during object creation, after setting all properties.
function Ainput_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ainput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Binput_Callback(hObject, eventdata, handles)
% hObject    handle to Binput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Binput as text
%        str2double(get(hObject,'String')) returns contents of Binput as a double


% --- Executes during object creation, after setting all properties.
function Binput_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Binput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Cinput_Callback(hObject, eventdata, handles)
% hObject    handle to Cinput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Cinput as text
%        str2double(get(hObject,'String')) returns contents of Cinput as a double


% --- Executes during object creation, after setting all properties.
function Cinput_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Cinput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tinput_Callback(hObject, eventdata, handles)
% hObject    handle to tinput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tinput as text
%        str2double(get(hObject,'String')) returns contents of tinput as a double


% --- Executes during object creation, after setting all properties.
function tinput_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tinput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
