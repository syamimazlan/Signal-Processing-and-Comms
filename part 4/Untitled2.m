% Part 4: Filter design

% Plotting signals in frequency domain
s1 = load('signal1.mat');
s2 = load('signal2.mat');
L1 = length(s1.x);
L2 = length(s2.x);

% Since we know the length,
% we can use it to reconstruct frequency vector
Fv1 = linspace(0, 1, L1);
Fv2 = linspace(0, 1, L2);

% plotting in time domain
figure
subplot(2,2,1)
plot(Fv1, s1.x); axis tight
xlabel('Time'); ylabel('Magnitude')
title('Original Signal 1')
subplot(2,2,2)
plot(Fv2, s2.x); axis tight
xlabel('Time'); ylabel('Magnitude')
title('Original Signal 2')

% sampling frequency, Fs = 1/Ts
Fs1 = 1/L1;
Fs2 = 1/L2;

nfft1 = 2^nextpow2(L1);
nfft2 = 2^nextpow2(L2);
yfft1 = abs(fft(s1.x, nfft1));
yfft2 = abs(fft(s2.x, nfft2));

% creating frequency axis
freq1 = Fs1/2*linspace(0, 1, nfft1/2+1);
freq2 = Fs2/2*linspace(0, 1, nfft2/2+1);

% plotting in frequency domain
subplot(2,2,3)
plot(freq1, yfft1(1:length(freq1)));
title('FFT Signal 1')
xlabel('Hz'); ylabel('magnitude');
subplot(2,2,4)
plot(freq2, yfft2(1:length(freq2)));
title('FFT Signal 2')
xlabel('Hz'); ylabel('magnitude');

% plotting first half of DFT (normalised frequency)
% to know the range of noise for filter design later
num_bins1 = length(yfft1);
num_bins2 = length(yfft2);
figure
subplot(2,1,1)
plot([0:1/(num_bins1/2 - 1):1], yfft1(1:num_bins1/2))
xlabel('Normalised frequency')
ylabel('Magnitude')
title('First half of DFT')
subplot(2,1,2)
plot([0:1/(num_bins2/2 - 1):1], yfft2(1:num_bins2/2))
xlabel('Normalised frequency')
ylabel('Magnitude')
title('First half of DFT')

%designing filter
order = 15;
[b, a] = butter(order, [0.2 0.7], 'stop');
s1_filtered = filter(b, a, s1.x);
s2_filtered = filter(b, a, s2.x);

freqz(b,a)
figure
subplot(2,1,1)
plot(Fv1, s1.x); axis tight
xlabel('Time'); ylabel('Magnitude')
title('Original signal 1')
subplot(2,1,2)
plot(s1_filtered); axis tight
xlabel('Hz'); ylabel('Magnitude')
title('Filtered signal 1')

figure
subplot(2,1,1)
plot(Fv2, s2.x); axis tight
xlabel('Time'); ylabel('Magnitude')
title('Original signal 2')
subplot(2,1,2)
plot(s2_filtered); axis tight
xlabel('Hz'); ylabel('Magnitude')
title('Filtered signal 2')


