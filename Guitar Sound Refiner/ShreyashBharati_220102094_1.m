                 %% Name : Shreyash S Bharati %%
                     %% Roll No : 220102094 %%

close all;
 clc;


load guitar.mat;     %Loading guitar.mat into the workspace
%soundsc(xx,fs);      %Playing guitar.mat

yy=digitaldelay_1(xx,0.6,1.667,fs);   %Calling the function with the specific values
soundsc(yy,fs);                   %Listening to the output waveform generated