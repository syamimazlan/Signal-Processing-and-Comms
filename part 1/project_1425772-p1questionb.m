%Performing 50-point moving-average filter using convolution

load bostemp
days = (1:31*24)/24;

windowSize = 50;
b = (1/windowSize)*ones(1,windowSize);
a = 1;
%impulse response, convoluted with the same array size
h = conv(tempC, b); 

%moving-average filter
yfilter = filter(b, a, h);

plot(days, tempC)
hold on
plot(days, yfilter, 'r')
axis tight
xlabel('Days')
ylabel('Temp (\circC)')
title('Graph of Temperature vs. Days (31 days)')
legend('Original data', 'Filtered data', 'location', 'best')

