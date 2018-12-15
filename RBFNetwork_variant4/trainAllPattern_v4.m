function [newCentres, newSigma, newWeights, newBias,gradError] = trainAllPattern_v4(networkDef, centres, sigma, weights, bias,etaCentre, etaSigma, etaWeight, input, output)
    [deltaCentre, deltaSigma,deltaWeight,deltaBias] = initDelta_v4(networkDef);
    errorMat = zeros(size(input,1),1);
    for index = 1 : size(input,1)
        [network, phi] = forwardPass_v4(networkDef, input(index,:), centres, sigma, weights, bias);
        [error,errorMat(index,1)] = calculateError_v4(network{3}, output(index,:)');
        [deltaCentreMinor,deltaSigmaMinor,deltaWeightMinor,deltaBiasMinor] = calculateDelta_v4(networkDef, network, centres, sigma, phi, error);
        deltaCentre = deltaCentre + deltaCentreMinor;
        deltaSigma = deltaSigma + deltaSigmaMinor;
        deltaWeight = deltaWeight + deltaWeightMinor;
        deltaBias = deltaBias + deltaBiasMinor;
    end
    [centres, sigma, weights, bias] = updation_v4(centres,(deltaCentre ./ size(input,1)), sigma, (deltaSigma ./ size(input,1)), weights, (deltaWeight ./ size(input,1)), bias, (deltaBias ./ size(input,1)), etaCentre, etaSigma, etaWeight);
    gradError = sum(errorMat)/size(input,1);
    newCentres = centres;
    newSigma = sigma;
    newWeights = weights;
    newBias = bias;
end