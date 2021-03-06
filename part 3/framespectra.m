% % 20 Sept 2021, documentation
% the score calculation is based on comparing 
% the distance between the known one and 
% the unknown one of the same person.

% therefore, need to send both of them here.
% either that, or just put the unknown speaker here
% and compare accordingly.
% UPDATE: idk anymore

function [speakerFinal] = framespectra(x)
% Cutting signals into frames to find its spectrum
% number of frames are the same as the length/number of samples
Tframes = 0.02; % 10 to 40ms
fs = 44100;
nFrames = round(Tframes*fs);
totalFrames = round(length(x)/nFrames);
Lspec = totalFrames*nFrames; % length of spectrum

[a, ~] = size(x);
x = x(:, 1);
if a>Lspec
    x = x(1:Lspec, :);
else
    x(Lspec) = 0;
end

% find the fft of the signal
freqK = 3000; % human voice, max is 4kHz
nfft = 1000;
% finding k value that corresponds to 3kHz
kmax = round((freqK*totalFrames)/fs); 
x = reshape(x, [nFrames totalFrames]);
speaker = abs(fft(x, nfft));
speaker = speaker(2:(kmax+1), :);

% normalised digital frequency
for m = 1:totalFrames
    final(m) = norm(speaker(:, m));
    for n = 1:kmax
        speakerFinal(n, m) = speaker(n, m)/final(m);
    end  
end
speakerFinal = length(speakerFinal);
end