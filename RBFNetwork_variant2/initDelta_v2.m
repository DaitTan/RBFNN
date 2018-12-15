function [deltaCentre,deltaSigma,deltaWeight,deltaBias] = initDelta_v2(networkDef)
    deltaWeight = initializeWeights_v2(networkDef, "initDelta");
    deltaCentre = initializeCentres_v2(networkDef, "initDelta");
    deltaBias = initializeBias_v2(networkDef, "initDelta");
    deltaSigma = initializeSigma_v2(networkDef, "initDelta");
end

