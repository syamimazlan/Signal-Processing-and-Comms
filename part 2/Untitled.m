% Notes frequency extraction

[y1, Fs1] = audioread('tone1.wav');
[y2, Fs2] = audioread('tone2.wav');
[y3, Fs3] = audioread('tone3.wav');
% above commands will give;
% y = sampled data,
% Fs = the sampling frequency

N1 = length(y1);
N2 = length(y2);
N3 = length(y3);
% length of signal

dt1 = 1/Fs1;
dt2 = 1/Fs2;
dt3 = 1/Fs3;
% sampling period

t1 = 0:dt1:(N1*dt1)-dt1;
t2 = 0:dt2:(N2*dt2)-dt2;
t3 = 0:dt3:(N3*dt3)-dt3;
% Finding for time domain

yfft1 = fft(y1);
yfft2 = fft(y2);
yfft3 = fft(y3);
% N-point DFT

F1 = ((0:1/N1:1-(1/N1))*Fs1).';
F2 = ((0:1/N2:1-(1/N2))*Fs2).';
F3 = ((0:1/N3:1-(1/N3))*Fs3).';
% frequency

magY1 = abs(yfft1);
magY2 = abs(yfft2);
magY3 = abs(yfft3);
% magnitude of FFT

%plotting in time domain
figure
subplot(2,2,1)
plot(t1, yfft1)
axis tight
xlabel('Time (s)')
ylabel('Amplitude for Tone 1')

subplot(2,2,2)
plot(t2, yfft2)
axis tight
xlabel('Time (s)')
ylabel('Amplitude for Tone 2')

subplot(2,2,3)
plot(t3, yfft3)
axis tight
xlabel('Time (s)')
ylabel('Amplitude for Tone 3')

% plotting in frequency domain
figure
plot(F1, magY1, 'k', F2, magY2, 'b', F3, magY3, 'r')
legend('Tone 1', 'Tone 2', 'Tone 3', 'location', 'best')
xlabel('Frequency (Hz)')
ylabel('Amplitude')