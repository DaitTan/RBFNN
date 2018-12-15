function [deltaCentre,deltaSigma,deltaWeight,deltaBias] = initDelta_v4(networkDef)
    deltaWeight = initializeWeights_v4(networkDef, "initDelta");
    deltaCentre = initializeCentres_v4(networkDef, "initDelta");
    deltaBias = initializeBias_v4(networkDef, "initDelta");
    deltaSigma = initializeSigma_v4(networkDef, "initDelta");
end

