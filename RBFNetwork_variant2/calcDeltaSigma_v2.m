function deltaSigma = calcDeltaSigma_v2(network,sigma, weights, phi, error)
    deltaSigma = (weights' * (-1 * error)) .* (phi ./ (sigma.^3)) .* (network{2}.^2);
end


