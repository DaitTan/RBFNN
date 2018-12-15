function [newCentres, newSigma, newWeights, newBias,gradError] = trainAllPattern_v2(networkDef, centres, sigma, weights, bias,etaCentre, etaSigma, etaWeight, input, output)
    [deltaCentre, deltaSigma,deltaWeight,deltaBias] = initDelta_v2(networkDef);
    errorMat = zeros(size(input,1),1);
    for index = 1 : size(input,1)
        [network, phi] = forwardPass_v2(networkDef, input(index,:), centres, sigma, weights, bias);
        [error,errorMat(index,1)] = calculateError_v2(network{3},output(index,:)');
        [deltaCentreMinor,deltaSigmaMinor,deltaWeightMinor,deltaBiasMinor] = calculateDelta_v2(networkDef, network, centres, sigma, weights, phi, error);
        deltaCentre = deltaCentre + deltaCentreMinor;
        deltaSigma = deltaSigma + deltaSigmaMinor;
        deltaWeight = deltaWeight + deltaWeightMinor;
        deltaBias = deltaBias + deltaBiasMinor;
    end
    [centres, sigma, weights, bias] = updation_v2(centres,(deltaCentre ./ size(input,1)), sigma, (deltaSigma ./ size(input,1)), weights, (deltaWeight ./ size(input,1)), bias, (deltaBias ./ size(input,1)), etaCentre, etaSigma, etaWeight);
    gradError = sum(errorMat)/size(input,1);
    newCentres = centres;
    newSigma = sigma;
    newWeights = weights;
    newBias = bias;
end