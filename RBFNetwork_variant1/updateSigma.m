function newSigma = updateSigma(sigma, deltaSigma, etaSigma)
    newSigma = sigma + (etaSigma * deltaSigma);
end