function [finalCentres,finalWeights,finalBias,finalError] = rbf_v1_train(iterations, networkDef, centres, sigma, weights, bias,etaCentre, etaWeight, input, output);
    gradError = zeros(iterations, 1);
    for i = 1: iterations
        [newCentres, newWeights, newBias,error] = trainAllPattern_v1(networkDef, centres, sigma, weights, bias,etaCentre, etaWeight, input, output);
        gradError(i, 1) = error;
        centres = newCentres;
        weights = newWeights;
        bias = newBias;
    end
    finalCentres = centres;
    finalWeights = weights;
    finalBias = bias;
    finalError = gradError;
end


