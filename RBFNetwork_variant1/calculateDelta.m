function [deltaCentre,deltaWeight,deltaBias] = calculateDelta(networkDef, network, centres, sigma, weights, phi, error)
    deltaWeight = calcDeltaWeight(phi,error);
    deltaCentre = calcDeltaCentre(networkDef, network, centres,sigma, weights, phi, error);
    deltaBias = calcDeltaBias(error);
end

