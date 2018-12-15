function [deltaCentre,deltaWeight,deltaBias] = initDelta_v3(networkDef)
    deltaWeight = initializeWeights_v3(networkDef, "initDelta");
    deltaCentre = initializeCentres_v3(networkDef, "initDelta");
    deltaBias = initializeBias_v3(networkDef, "initDelta");
end

