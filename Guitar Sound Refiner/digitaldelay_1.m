                     %% Name : Shreyash S Bharati %%
                        %% Roll No : 220102094 %%

function [output] = digitaldelay_1(input, timedelay, echoattenuation, samplingfreq)  %Function syntax specified
hh=zeros(size(input,1),1);                  %Creating empty array for impulse response
hh(1)=1;                                    %Set the value of impulse response at t=0 to 1
hh(timedelay*samplingfreq)=1/echoattenuation; %Set the value of impulse response at t=timedelay to echoattenuation
output=conv(input,hh);                      %Generating output by performing convolution
