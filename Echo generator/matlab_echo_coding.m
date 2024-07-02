   %% Name : Shreyash S Bharati %%
   %% Roll No : 220102094 %%

clear   
close all
clc


%% Performing the loading and listening operations

load echo.mat;     %Loading the echo.mat file into the matlab workspace
%%soundsc (xx,fs) ;  %Listening the speech waveform generated


%% Plotting the speech waveform in time domain %%
 
t_xx = linspace(0,length(xx)/fs,length(xx)); %Time axis for plot of xx
figure("Name",'Plot_original_waveform');     %Label of the plot
plot(t_xx,xx);                       %Plotting the waveform 
title('Speech waveform in t-domain') %Title of the plot
xlabel('Time Axis');                 %Label_x_axis of the plot
ylabel('Amplitude Axis');            %Label_y_axis of the plot


%% Generating the impulse response for the output waveform specified %%
                
          % Here the time delay=1s and the attenuation factor=0.25 %

hh=zeros(size(xx,1),1); %Generates an array of size no of rows of xx and 1 column 
hh(1)=1;                %Sets the the value of impulse response at t=0 to 1
hh(2*fs)=0.25;            %Sets the the value of impulse response at t=1 to 0.25


%% Plotting the impulse response %%                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
 
t_hh = linspace(0,length(hh)/fs,length(hh)); %Time axis for plot of xx
figure("Name",'Plot_impulse_response');      %Label of the plot
plot(t_hh,hh);                       %Plotting the waveform 
title('Impulse respose in t-domain') %Title of the plot
xlabel('Time Axis');                 %Label_x_axis of the plot
ylabel('Amplitude Axis');            %Label_y_axis of the plot


%% Performing the convolution operation to generate the output and plotting the output %%

yy=conv(xx,hh);                      %Performing convolution to obtain the output     
t_yy = linspace(0,length(yy)/fs,length(yy)); %Time axis for plot of xx
figure("Name",'Plot_output_waveform');       %Label of the plot   
plot(t_yy,yy);                       %Plotting the waveform 
title('Output waveform in t-domain') %Title of the plot
xlabel('Time Axis');                 %Label_x_axis of the plot
ylabel('Amplitude Axis');            %Label_y_axis of the plot


%% Listening to the output waveform generated %%

soundsc(yy,fs);                      %Listening to the output waveform produced
S='The value of all the variables dealt with in the code';
disp(S)