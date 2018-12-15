function deltaWeights = calcDeltaWeight_v2(phi, error)
    deltaWeights = error * phi';
end

