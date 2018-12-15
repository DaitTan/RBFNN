function [error,gradientError] = calculateError_v3(predicted, target)
    error = predicted - target;
    gradientError = (sum(error.^2))/2;
end

