function newSigma = updateSigma_v3(sigma, deltaSigma, etaSigma)
    newSigma = sigma - (etaSigma * deltaSigma);
end