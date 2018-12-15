function deltaWeights = calcDeltaWeight_v3(networkDef, network, centres,sigma, phi, error)
    deltaWeights = (((network{2} * ones(1,networkDef(3)))' - centres)' * ((-1 * error) .* (phi ./ (sigma.^2)))) * network{1}';
end

