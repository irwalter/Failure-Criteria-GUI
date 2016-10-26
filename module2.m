%testing

function varargout = module2(varargin)
% MODULE2 MATLAB code for module2.fig
%      MODULE2, by itself, creates a new MODULE2 or raises the existing
%      singleton*.
%
%      H = MODULE2 returns the handle to a new MODULE2 or the handle to
%      the existing singleton*.
%
%      MODULE2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MODULE2.M with the given input arguments.
%
%      MODULE2('Property','Value',...) creates a new MODULE2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before module2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to module2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help module2

% Last Modified by GUIDE v2.5 02-Dec-2015 15:53:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @module2_OpeningFcn, ...
                   'gui_OutputFcn',  @module2_OutputFcn, ...
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


% --- Executes just before module2 is made visible.
function module2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to module2 (see VARARGIN)

% Choose default command line output for module2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% Adding images of variables
pict = imread('MaxStressCriteria.png');
% Displays image in axes 7
axes(handles.axes7);
imshow(pict);
pict = imread('fiberPic.png');
% Displays image in axes 8
axes(handles.axes8);
imshow(pict);
pict = imread('Sigma_uc.png');
% Displays image in axes 3
axes(handles.axes3);
imshow(pict);
pict = imread('Tau_um.png');
% Displays image in axes 5
axes(handles.axes5);
imshow(pict);
pict = imread('Sigma_um.png');
% Displays image in axes 4
axes(handles.axes4);
imshow(pict);
% For plotting 
axes(handles.axes1);
% Initializes values
A = get(handles.slider1,'Value'); % sigma_uc
A = A + 2.75;
B = get(handles.slider4,'Value'); % tau_um
B = B + 2.55;
C = get(handles.slider3,'Value'); % sigma_um
C = C + 2.55;
D = get(handles.slider5,'Value'); % maxStress
D = D + 4;
% Plotting
[E,F,G,H] = FailureCriteria(A,B,C,D, handles);
% Initializing text boxes
set(handles.edit5,'String',A);
set(handles.edit7,'String',C);
set(handles.edit6,'String', B);
set(handles.edit4,'String',D);



% --- Outputs from this function are returned to the command line.
function varargout = module2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
A = get(handles.slider1,'Value'); % sigma_uc
A = A + 2.75;
B = get(handles.slider4,'Value'); % tau_um
B = B + 2.55;
C = get(handles.slider3,'Value'); % sigma_um
C = C + 2.55;
D = get(handles.slider5,'Value'); % maxStress
D = D + 4;
% Displays slider values
set(handles.edit5,'String',A);
[E,F,G,H] = FailureCriteria(A,B,C,D, handles);

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
A = get(handles.slider1,'Value'); % sigma_uc
A = A + 2.75;
B = get(handles.slider4,'Value'); % tau_um
B = B + 2.55;
C = get(handles.slider3,'Value'); % sigma_um
C = C + 2.55;
D = get(handles.slider5,'Value'); % maxStress
D = D + 4;
% Displays slider values
set(handles.edit7,'String',C);
[E,F,G,H] = FailureCriteria(A,B,C,D, handles);

% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
A = get(handles.slider1,'Value'); % sigma_uc
A = A + 2.75;
B = get(handles.slider4,'Value'); % tau_um
B = B + 2.55;
C = get(handles.slider3,'Value'); % sigma_um
C = C + 2.55;
D = get(handles.slider5,'Value'); % maxStress
D = D + 4;
% Displays slider values
set(handles.edit6,'String', B);
[E,F,G,H] = FailureCriteria(A,B,C,D, handles);

% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
A = get(handles.slider1,'Value'); % sigma_uc
A = A + 2.75;
B = get(handles.slider4,'Value'); % tau_um
B = B + 2.55;
C = get(handles.slider3,'Value'); % sigma_um
C = C + 2.55;
D = get(handles.slider5,'Value'); % maxStress
D = D + 4;
% Displays slider values
set(handles.edit4,'String',D);
[E,F,G,H] = FailureCriteria(A,B,C,D, handles);

% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function [ E, F, G, H ] = FailureCriteria( A, B, C, D, handles )
%Computes the failure criteria and graphs them
% A = sigma_uc
% B = sigma_um
% C = tau_um
% D = Maximum Stress
% E = sigma_uc/cos^2
% F = sigma_um/sin^2
% G = tau_um/(sin*cos)
% H = Tsai-Hill Criterion

% Calculation of first three values
theta = 0:pi/360:pi/2;
cos2 = cos(theta).^2;
cos4 = cos(theta).^4;
sin2 = sin(theta).^2;
sin4 = sin(theta).^4;
sinCos = sin(theta).*cos(theta);
E = A*cos2.^(-1);
F = B*sin2.^(-1);
G = C*sinCos.^(-1);

% Calculation of Tsai-Hill Criterion
H = (cos4/A^2+sin4/B^2+sin4/B^2-cos2.*sin2/A^2+cos2.*sin2/C^2).^(-1/2);

% for plotting
theta = 0:.5:90;
% Plotting Values
axes(handles.axes1);
plot(theta, H, 'k-');
set( gca, 'FontSize', 14);
% Shading failure area
a = area(theta,H,D);
a.FaceColor = [.9 .9 .9];
hold on;
plot(theta, E, 'r--', theta, F, 'b--', theta, G, 'k--');
ylim([0,D]);
xlim([0,90]);
xlabel('Degrees \theta');
ylabel('Maximum Stress \sigma_1_1 (MPa)');
hold off;
