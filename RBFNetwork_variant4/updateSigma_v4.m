function newSigma = updateSigma_v4(sigma, deltaSigma, etaSigma)
    newSigma = sigma - (etaSigma * deltaSigma);
end