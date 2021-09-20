%24-point moving-average filter

load bostemp
days = (1:31*24)/24; 
% for 31 days, 1 day = 24 hours

%So, to obtain a 24-point filter on tempC,
hoursPerDay = 24;
coeff24hMA = ones(1, hoursPerDay)/hoursPerDay;

avg24hTempC = filter(coeff24hMA, 1, tempC);
plot(days, tempC)
plot(days, [tempC avg24hTempC])
axis tight
xlabel('Days')
ylabel('Temp (\circC)')
title('Graph of Temperature vs. Days (31 days)')
legend('Original data', 'Filtered data', 'location', 'best')

