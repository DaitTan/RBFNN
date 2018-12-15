function newWeights = updateWeights_v2(weights, deltaWeight, etaWeight)
    newWeights = weights - (etaWeight * deltaWeight);
end
