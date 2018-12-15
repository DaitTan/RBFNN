function newBias = updateBias(bias, deltaBias, etaWeight)
    newBias = bias - (etaWeight * deltaBias);
end