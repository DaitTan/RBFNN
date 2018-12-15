function newSigma = updateSigma_v2(sigma, deltaSigma, etaSigma)
    newSigma = sigma + (etaSigma * deltaSigma);
end