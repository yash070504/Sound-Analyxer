 %% Name : Shreyash S Bharati %%
   %% Roll No : 220102094 %%

clear
close all
clc


%% Load the audio signals from .mat file %%
load Sound.mat
inp_signal=xx;
op_signal=yy;
Fs=fs;

%% Plot the input signal to visually inspect the peaks %%

t_inp=linspace(0,length(inp_signal)/fs,length(inp_signal));
figure;
plot(t_inp,inp_signal);
title('Input Signal');
xlabel('Time');
ylabel('Amplitude');

%% Plot the output signal to visually inspect the peaks %%

t_op=linspace(0,length(op_signal)/fs,length(op_signal));
figure;
plot(t_op,op_signal);
title('Received Signal');
xlabel('Time');
ylabel('Amplitude');

%% Find peaks in the output signal %%

[pks, locs] = findpeaks(op_signal, 'MinPeakHeight', 0.1, 'MinPeakDistance', length(xx));


%% Display the number of peaks %%

num_echos = length(pks)-1;
fprintf('Number of echoes: %d\n', num_echos);


%% Maximum amplitude of the transmitted signal %%

max_inp_amplitude = max(inp_signal);


%% Calculate attenuation factor for each peak %%

attenuation_factors = max_inp_amplitude ./ pks;


%% Display the attenuation factor for the echo %%

disp('Attenuation factor for the echo');
disp(attenuation_factors(2:end,1));


%% Calculate the time delay for each peak %%

time_delays = (locs-locs(1) )/ Fs;
disp('Time delay for the echo');
disp(time_delays(2:end,1));

