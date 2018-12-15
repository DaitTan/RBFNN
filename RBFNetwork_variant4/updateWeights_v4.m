function newWeights = updateWeights_v4(weights, deltaWeight, etaWeight)
    newWeights = weights + (etaWeight * deltaWeight);
end
