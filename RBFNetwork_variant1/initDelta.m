function [deltaCentre,deltaWeight,deltaBias] = initDelta(networkDef)
    deltaWeight = initializeWeights(networkDef, "initDelta");
    deltaCentre = initializeCentres(networkDef, "initDelta");
    deltaBias = initializeBias(networkDef, "initDelta");
end

