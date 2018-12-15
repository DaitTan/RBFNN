function deltaSigma = calcDeltaSigma_v3(network,sigma, phi, error)
    deltaSigma = (-1 * error) .* (phi ./ (sigma.^3)) .* (network{3}.^2);
end


