% to find the euclidean distance 
% from the remaining five recordings.

% training uses framespectra.m to
% train the trdata.mat file for data display later

% fs is set at 44100Hz, so no need to send it.
% for speaker 1, Syaheera
[x] = audioread('P1.wav');
P1 = framespectra(x);
[x] = audioread('P2.wav');
P2 = framespectra(x);
[x] = audioread('P3.wav');
P3 = framespectra(x);
[x] = audioread('P4.wav');
P4 = framespectra(x);
[x] = audioread('P5.wav');
P5 = framespectra(x);
[x] = audioread('UnownP1.wav');
P26 = framespectra(x);
trdata{1} = (P1 + P2 + P3 + P4 + P5)/5;

% for speaker 2, Megat
[x] = audioread('P6.wav');
P6 = framespectra(x);
[x] = audioread('P7.wav');
P7 = framespectra(x);
[x] = audioread('P8.wav');
P8 = framespectra(x);
[x] = audioread('P9.wav');
P9 = framespectra(x);
[x] = audioread('P10.wav');
P10 = framespectra(x);
[x] = audioread('UnownP2.wav');
P27 = framespectra(x);
trdata{2} = (P6 + P7 + P8 + P9 + P10)/5;

% for speaker 3, Fatin
[x] = audioread('P11.wav');
P11 = framespectra(x);
[x] = audioread('P12.wav');
P12 = framespectra(x);
[x] = audioread('P13.wav');
P13 = framespectra(x);
[x] = audioread('P14.wav');
P14 = framespectra(x);
[x] = audioread('P15.wav');
P15 = framespectra(x);
[x] = audioread('UnownP3.wav');
P28 = framespectra(x);
trdata{3} = (P11 + P12 + P13 + P14 + P15)/5;

% for speaker 4, Sara
[x] = audioread('P16.wav');
P16 = framespectra(x);
[x] = audioread('P17.wav');
P17 = framespectra(x);
[x] = audioread('P18.wav');
P18 = framespectra(x);
[x] = audioread('P19.wav');
P19 = framespectra(x);
[x] = audioread('P20.wav');
P20 = framespectra(x);
[x] = audioread('UnownP4.wav');
P29 = framespectra(x);
trdata{4} = (P16 + P17 + P18 + P19 + P20)/5;

% for speaker 5, Nuruddin
[x] = audioread('P21.wav');
P21 = framespectra(x);
[x] = audioread('P22.wav');
P22 = framespectra(x);
[x] = audioread('P23.wav');
P23 = framespectra(x);
[x] = audioread('P24.wav');
P24 = framespectra(x);
[x] = audioread('P25.wav');
P25 = framespectra(x);
[x] = audioread('UnownP5.wav');
P30 = framespectra(x);
trdata{5} = (P21 + P22 + P23 + P24 + P25)/5;

save TrainData.mat, trdata;