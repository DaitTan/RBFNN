function [deltaCentre,deltaSigma,deltaWeight,deltaBias] = calculateDelta_v2(networkDef, network, centres, sigma, weights, phi, error)
    deltaWeight = calcDeltaWeight_v2(phi,error);
    deltaCentre = calcDeltaCentre_v2(networkDef, network, centres,sigma, weights, phi, error);
    deltaSigma = calcDeltaSigma_v2(network,sigma, weights, phi, error);
    deltaBias = calcDeltaBias_v2(error);
end

