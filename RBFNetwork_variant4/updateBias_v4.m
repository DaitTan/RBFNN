function newBias = updateBias_v4(bias, deltaBias, etaWeight)
    newBias = bias + (etaWeight * deltaBias);
end