function [newCentres, newWeights, newBias,gradError] = trainAllPattern_v3(networkDef, centres, sigma, weights, bias,etaCentre, etaWeight, input, output)
    [deltaCentre,deltaWeight,deltaBias] = initDelta_v3(networkDef);
    errorMat = zeros(size(input,1),1);
    for index = 1 : size(input,1)
        [network, phi] = forwardPass_v3(networkDef, input(index,:), centres, sigma, weights, bias);
        [error,errorMat(index,1)] = calculateError_v3(network{3}, output(index,:)');
        [deltaCentreMinor,deltaWeightMinor,deltaBiasMinor] = calculateDelta_v3(networkDef, network, centres, sigma, phi, error);
        deltaCentre = deltaCentre + deltaCentreMinor;
        deltaWeight = deltaWeight + deltaWeightMinor;
        deltaBias = deltaBias + deltaBiasMinor;
    end
    [centres, weights, bias] = updation_v3(centres,(deltaCentre ./ size(input,1)), weights, (deltaWeight ./ size(input,1)), bias, (deltaBias ./ size(input,1)), etaCentre, etaWeight);
    gradError = sum(errorMat)/size(input,1);
    newCentres = centres;
    newWeights = weights;
    newBias = bias;
end