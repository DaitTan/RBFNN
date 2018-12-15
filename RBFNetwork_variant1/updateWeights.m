function newWeights = updateWeights(weights, deltaWeight, etaWeight)
    newWeights = weights - (etaWeight * deltaWeight);
end
