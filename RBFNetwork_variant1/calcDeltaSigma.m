function deltaSigma = calcDeltaSigma(network,sigma, weights, phi, error)
    deltaSigma = (weights' * (-1 * error)) .* (phi ./ (sigma.^3)) .* (network{2}.^2);
end


