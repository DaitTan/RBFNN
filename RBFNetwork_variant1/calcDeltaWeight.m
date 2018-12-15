function deltaWeights = calcDeltaWeight(phi, error)
    deltaWeights = error * phi';
end

