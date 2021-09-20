

% 5 person of 6 different recordings were done.
% compare the first five recordings 
% to the unknown of its respective speaker.

% Basically, using Euclidean to find
% the smallest distance.

% to find the euclidean distance 
% from the remaining five recordings.

% Part 3: Speaker recognition
% fs is set at 44100Hz, so no need to send it.
[x, ~] = audioread('UnownP1.wav'); Unown1 = framespectra(x);
[x, ~] = audioread('UnownP2.wav'); Unown2 = framespectra(x);
[x, ~] = audioread('UnownP3.wav'); Unown3 = framespectra(x);
[x, ~] = audioread('UnownP4.wav'); Unown4 = framespectra(x);
[x, ~] = audioread('UnownP5.wav'); Unown5 = framespectra(x);

% for speaker 1, Syaheera
[x, ~] = audioread('P1.wav'); P1 = framespectra(x);
[x, ~] = audioread('P2.wav'); P2 = framespectra(x);
[x, ~] = audioread('P3.wav'); P3 = framespectra(x);
[x, ~] = audioread('P4.wav'); P4 = framespectra(x);
[x, ~] = audioread('P5.wav'); P5 = framespectra(x);

scoreP1 = [scorefunct(P1, Unown1) scorefunct(P2, Unown1) 
    scorefunct(P3, Unown1) scorefunct(P4, Unown1) scorefunct(P5, Unown1)];
scoreP2 = [scorefunct(P1, Unown2) scorefunct(P2, Unown2) 
    scorefunct(P3, Unown2) scorefunct(P4, Unown2) scorefunct(P5, Unown2)];
scoreP3 = [scorefunct(P1, Unown3) scorefunct(P2, Unown3) 
    scorefunct(P3, Unown3) scorefunct(P4, Unown3) scorefunct(P5, Unown3)];
scoreP4 = [scorefunct(P1, Unown4) scorefunct(P2, Unown4) 
    scorefunct(P3, Unown4) scorefunct(P4, Unown4) scorefunct(P5, Unown4)];
scoreP5 = [scorefunct(P1, Unown5) scorefunct(P2, Unown5) 
    scorefunct(P3, Unown5) scorefunct(P4, Unown5) scorefunct(P5, Unown5)];

meanScore{1} = [scoreP1 scoreP2 scoreP3 scoreP4 scoreP5];

% for speaker 2, Megat
[x, ~] = audioread('P6.wav'); P6 = framespectra(x);
[x, ~] = audioread('P7.wav'); P7 = framespectra(x);
[x, ~] = audioread('P8.wav'); P8 = framespectra(x);
[x, ~] = audioread('P9.wav'); P9 = framespectra(x);
[x, ~] = audioread('P10.wav'); P10 = framespectra(x);

scoreP6 = [scorefunct(P6, Unown1) scorefunct(P7, Unown1) scorefunct(P8, Unown1) scorefunct(P9, Unown1) scorefunct(P10, Unown1)];
scoreP7 = [scorefunct(P6, Unown2) scorefunct(P7, Unown2) scorefunct(P8, Unown2) scorefunct(P9, Unown2) scorefunct(P10, Unown2)];
scoreP8 = [scorefunct(P6, Unown3) scorefunct(P7, Unown3) scorefunct(P8, Unown3) scorefunct(P9, Unown3) scorefunct(P10, Unown3)];
scoreP9 = [scorefunct(P6, Unown4) scorefunct(P7, Unown4) scorefunct(P8, Unown4) scorefunct(P9, Unown4) scorefunct(P10, Unown4)];
scoreP10 = [scorefunct(P6, Unown5) scorefunct(P7, Unown5) scorefunct(P8, Unown5) scorefunct(P9, Unown5) scorefunct(P10, Unown5)];

meanScore{2} = [scoreP6 scoreP7 scoreP8 scoreP9 scoreP10];

% for speaker 3, Fatin
[x, ~] = audioread('P11.wav'); P11 = framespectra(x);
[x, ~] = audioread('P12.wav'); P12 = framespectra(x);
[x, ~] = audioread('P13.wav'); P13 = framespectra(x);
[x, ~] = audioread('P14.wav'); P14 = framespectra(x);
[x, ~] = audioread('P15.wav'); P15 = framespectra(x);

scoreP11 = [scorefunct(P11, Unown1) scorefunct(P12, Unown1) scorefunct(P13, Unown1) scorefunct(P14, Unown1) scorefunct(P15, Unown1)];
scoreP12 = [scorefunct(P11, Unown2) scorefunct(P12, Unown2) scorefunct(P13, Unown2) scorefunct(P14, Unown2) scorefunct(P15, Unown2)];
scoreP13 = [scorefunct(P11, Unown3) scorefunct(P12, Unown3) scorefunct(P13, Unown3) scorefunct(P14, Unown3) scorefunct(P15, Unown3)];
scoreP14 = [scorefunct(P11, Unown4) scorefunct(P12, Unown4) scorefunct(P13, Unown4) scorefunct(P14, Unown4) scorefunct(P15, Unown4)];
scoreP15 = [scorefunct(P11, Unown5) scorefunct(P12, Unown5) scorefunct(P13, Unown5) scorefunct(P14, Unown5) scorefunct(P15, Unown5)];

meanScore{3} = [scoreP11 scoreP12 scoreP13 scoreP14 scoreP15];

% for speaker 4, Sara
[x, ~] = audioread('P16.wav'); P16 = framespectra(x);
[x, ~] = audioread('P17.wav'); P17 = framespectra(x);
[x, ~] = audioread('P18.wav'); P18 = framespectra(x);
[x, ~] = audioread('P19.wav'); P19 = framespectra(x);
[x, ~] = audioread('P20.wav'); P20 = framespectra(x);

scoreP16 = [scorefunct(P16, Unown1) scorefunct(P17, Unown1) scorefunct(P18, Unown1) scorefunct(P19, Unown1) scorefunct(P20, Unown1)];
scoreP17 = [scorefunct(P16, Unown2) scorefunct(P17, Unown2) scorefunct(P18, Unown2) scorefunct(P19, Unown2) scorefunct(P20, Unown2)];
scoreP18 = [scorefunct(P16, Unown3) scorefunct(P17, Unown3) scorefunct(P18, Unown3) scorefunct(P19, Unown3) scorefunct(P20, Unown3)];
scoreP19 = [scorefunct(P16, Unown4) scorefunct(P17, Unown4) scorefunct(P18, Unown4) scorefunct(P19, Unown4) scorefunct(P20, Unown4)];
scoreP20 = [scorefunct(P16, Unown5) scorefunct(P17, Unown5) scorefunct(P18, Unown5) scorefunct(P19, Unown5) scorefunct(P20, Unown5)];

meanScore{4} = [scoreP16 scoreP17 scoreP18 scoreP19 scoreP20];

% for speaker 5, Nuruddin
[x, ~] = audioread('P21.wav'); P21 = framespectra(x);
[x, ~] = audioread('P22.wav'); P22 = framespectra(x);
[x, ~] = audioread('P23.wav'); P23 = framespectra(x);
[x, ~] = audioread('P24.wav'); P24 = framespectra(x);
[x, ~] = audioread('P25.wav'); P25 = framespectra(x);

scoreP21 = [scorefunct(P21, Unown1) scorefunct(P21, Unown1) scorefunct(P21, Unown1) scorefunct(P21, Unown1) scorefunct(P21, Unown1)];
scoreP22 = [scorefunct(P22, Unown2) scorefunct(P22, Unown2) scorefunct(P22, Unown2) scorefunct(P22, Unown2) scorefunct(P22, Unown2)];
scoreP23 = [scorefunct(P23, Unown3) scorefunct(P23, Unown3) scorefunct(P23, Unown3) scorefunct(P23, Unown3) scorefunct(P23, Unown3)];
scoreP24 = [scorefunct(P24, Unown4) scorefunct(P24, Unown4) scorefunct(P24, Unown4) scorefunct(P24, Unown4) scorefunct(P24, Unown4)];
scoreP25 = [scorefunct(P25, Unown5) scorefunct(P25, Unown5) scorefunct(P25, Unown5) scorefunct(P25, Unown5) scorefunct(P25, Unown5)];

meanScore{5} = [scoreP21 scoreP22 scoreP23 scoreP24 scoreP25];