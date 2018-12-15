function [finalCentres,finalSigma, finalWeights,finalBias,finalError] = rbf_v2_train(iterations,networkDef, centres, sigma, weights, bias,etaCentre, etaSigma, etaWeight, input, output);

    gradError = zeros(iterations, 1);
    for i = 1: iterations
        [newCentres, newSigma, newWeights, newBias,error] = trainAllPattern_v2(networkDef, centres, sigma, weights, bias,etaCentre, etaSigma, etaWeight, input, output);
        gradError(i, 1) = error;
        centres = newCentres;
        sigma = newSigma;
        weights = newWeights;
        bias = newBias;
    end
    finalCentres = centres;
    finalWeights = weights;
    finalSigma = sigma;
    finalBias = bias;
    finalError = gradError;
end

