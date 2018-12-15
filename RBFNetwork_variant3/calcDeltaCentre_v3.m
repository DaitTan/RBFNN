function deltaCentres = calcDeltaCentre_v3(networkDef, network, centres,sigma, phi, error)
    deltaCentres = (-1 * error) .* (phi ./ (sigma.^2)) .* ((network{2} * ones(1,networkDef(3)))' - centres);
end
 

