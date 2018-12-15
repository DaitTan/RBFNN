function [deltaCentre,deltaWeight,deltaBias] = calculateDelta_v3(networkDef, network, centres, sigma, phi, error)
    deltaWeight = calcDeltaWeight_v3(networkDef, network, centres,sigma, phi, error);
    deltaCentre = calcDeltaCentre_v3(networkDef, network, centres,sigma, phi, error);
    deltaBias = calcDeltaBias_v3(networkDef, network, error, centres, phi, sigma);
end

