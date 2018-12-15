function [newCentres, newWeights, newBias] = updation_v3(centres,deltaCentre, weights, deltaWeight, bias, deltaBias, etaCentre, etaWeight)
    newWeights = updateWeights_v3(weights, deltaWeight, etaWeight);
    newCentres = updateCentre_v3(centres, deltaCentre, etaCentre);
    newBias = updateBias_v3(bias, deltaBias, etaWeight);
end

