% % 19 September 2021
% here is for euclidean distance calculation
% euclidean = shortest distance between two vectors

% % 20 September 2021
% AHA just need to send data 
% from framespectra.m to here
% AND COMPARE THEM FOR THE training.m
% TO CALCULATE OH MY GOWAEUHNLFJHA

% a = known speaker
% b = unknown speaker of the same person

function [score] = scorefunct(a, b)
a = transpose(a);
u = length(a);
x = length(b);

for j = 1:u
    for k = 1:x
        multiply = 2-((2*u(j, :))*b(:, k));
        dist{j, k} = sqrt(multiply);
    end
    euclDist(j) = dist(j, :);
end
score = euclDist;
end