function newBias = updateBias_v3(bias, deltaBias, etaWeight)
    newBias = bias + (etaWeight * deltaBias);
end