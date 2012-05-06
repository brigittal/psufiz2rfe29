function varargout = For_You(varargin)
% FOR_YOU MATLAB code for For_You.fig
%      FOR_YOU, by itself, creates a new FOR_YOU or raises the existing
%      singleton*.
%
%      H = FOR_YOU returns the handle to a new FOR_YOU or the handle to
%      the existing singleton*.
%
%      FOR_YOU('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FOR_YOU.M with the given input arguments.
%
%      FOR_YOU('Property','Value',...) creates a new FOR_YOU or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before For_You_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to For_You_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help For_You

% Last Modified by GUIDE v2.5 09-Apr-2012 13:30:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @For_You_OpeningFcn, ...
                   'gui_OutputFcn',  @For_You_OutputFcn, ...
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


% --- Executes just before For_You is made visible.
function For_You_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to For_You (see VARARGIN)

% Choose default command line output for For_You
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes For_You wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = For_You_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in selBut.
function selBut_Callback(hObject, eventdata, handles)
 [str, path]=uigetfile('*.wav','Select WAV file');
 set(handles.pathEd,'String',[path str]);
% hObject    handle to selBut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function pathEd_Callback(hObject, eventdata, handles)
% hObject    handle to pathEd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pathEd as text
%        str2double(get(hObject,'String')) returns contents of pathEd as a double


% --- Executes during object creation, after setting all properties.
function pathEd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pathEd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in filtBut.
function filtBut_Callback(hObject, eventdata, handles)
 filter(get(handles.pathEd,'String'),get(handles.conEd,'String'));
% hObject    handle to filtBut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function conEd_Callback(hObject, eventdata, handles)
% hObject    handle to conEd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of conEd as text
%        str2double(get(hObject,'String')) returns contents of conEd as a double


% --- Executes during object creation, after setting all properties.
function conEd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to conEd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
