function [newCentres, newSigma, newWeights, newBias] = updation_v4(centres,deltaCentre, sigma, deltaSigma, weights, deltaWeight, bias, deltaBias, etaCentre, etaSigma, etaWeight)
    newWeights = updateWeights_v4(weights, deltaWeight, etaWeight);
    newCentres = updateCentre_v4(centres, deltaCentre, etaCentre);
    newSigma = updateSigma_v4(sigma, deltaSigma, etaSigma);
    newBias = updateBias_v4(bias, deltaBias, etaWeight);
end

