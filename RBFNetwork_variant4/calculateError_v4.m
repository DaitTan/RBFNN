function [error,gradientError] = calculateError_v4(predicted, target)
    error = predicted - target;
    gradientError = (sum(error.^2))/2;
end

