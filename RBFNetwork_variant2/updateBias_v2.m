function newBias = updateBias_v2(bias, deltaBias, etaWeight)
    newBias = bias - (etaWeight * deltaBias);
end