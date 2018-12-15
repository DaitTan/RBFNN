function deltaBias = calcDeltaBias_v3(networkDef, network, error, centres, phi, sigma)
    deltaBias = (((network{2} * ones(1,networkDef(3)))' - centres)' * ((-1 * error) .* (phi ./ (sigma.^2))));
end

