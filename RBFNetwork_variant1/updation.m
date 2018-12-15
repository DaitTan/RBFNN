function [newCentres, newWeights, newBias] = updation(centres,deltaCentre, weights, deltaWeight, bias, deltaBias, etaCentre, etaWeight)
    newWeights = updateWeights(weights, deltaWeight, etaWeight);
    newCentres = updateCentre(centres, deltaCentre, etaCentre);
    newBias = updateBias(bias, deltaBias, etaWeight);
end

