function [error,gradientError] = calculateError(predicted, target)
    error = predicted - target;
    gradientError = (sum(error.^2))/2;
end

