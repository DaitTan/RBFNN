clear;
networkDef = [2,5,1];
input =   [0.1,0.1;
            0.1,0.9;
            0.9,0.1;
            0.9,0.9];
        
output = [0.1;0.9;0.9;0.1];

weights = initializeWeights_v3(networkDef, "random");
bias = initializeBias_v3(networkDef, "random");
centres = initializeCentres_v3(networkDef, "random");
sigma = initializeSigma_v3(networkDef, "random");

etaCentre = 0.4;
etaSigma=0.5;
etaWeight=0.6;

[network, phi] = forwardPass_v3(networkDef, input(1,:), centres, sigma, weights, bias);
[error, gradError] = calculateError_v3(network{3}, [0.1]);


[deltaCentre,deltaSigma,deltaWeight,deltaBias] = calculateDelta_v3(networkDef, network, centres, sigma, phi, error);
[newCentres, newWeights, newBias] = updation_v3(centres,deltaCentre, weights, deltaWeight, bias, deltaBias, etaCentre, etaSigma, etaWeight);