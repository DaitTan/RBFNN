function [deltaCentre,deltaSigma,deltaWeight,deltaBias] = calculateDelta_v4(networkDef, network, centres, sigma, phi, error)
    deltaWeight = calcDeltaWeight_v4(networkDef, network, centres,sigma, phi, error);
    deltaCentre = calcDeltaCentre_v4(networkDef, network, centres,sigma, phi, error);
    deltaSigma = calcDeltaSigma_v4(network,sigma, phi, error);
    deltaBias = calcDeltaBias_v4(networkDef, network, error, centres, phi, sigma);
end

