function [newCentres, newSigma, newWeights, newBias] = updation_v2(centres,deltaCentre, sigma, deltaSigma, weights, deltaWeight, bias, deltaBias, etaCentre, etaSigma, etaWeight)
    newWeights = updateWeights_v2(weights, deltaWeight, etaWeight);
    newCentres = updateCentre_v2(centres, deltaCentre, etaCentre);
    newSigma = updateSigma_v2(sigma, deltaSigma, etaSigma);
    newBias = updateBias_v2(bias, deltaBias, etaWeight);
end

