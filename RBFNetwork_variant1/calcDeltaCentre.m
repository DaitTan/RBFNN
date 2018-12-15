function deltaCentres = calcDeltaCentre(networkDef, network, centres,sigma, weights, phi, error)
    deltaCentres = (weights' * (-1 * error)) .* (phi ./ (sigma.^2)) .* ((network{1} * ones(1,networkDef(2)))' - centres);
end


