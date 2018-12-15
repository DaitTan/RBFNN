clear;
networkDef = [2,5,2];
input =   [0.1,0.1;
            0.1,0.9;
            0.9,0.1;
            0.9,0.9];
        
output = [0.1;0.9;0.9;0.1];

weights = initializeWeights_v2(networkDef, "random");
bias = initializeBias_v2(networkDef, "random");
centres = initializeCentres_v2(networkDef, "random");
sigma = initializeSigma_v2(networkDef, "random");

etaCentre = 0.4;
etaSigma=0.5;
etaWeight=0.6;
iterations = 100;

gradError = zeros(iterations, 1);
for i = 1: iterations
    [newCentres, newSigma, newWeights, newBias,error] = trainAllPattern_v2(networkDef, centres, sigma, weights, bias,etaCentre, etaSigma, etaWeight, input, output);
    gradError(i, 1) = error;
    centres = newCentres;
    sigma = newSigma;
    weights = newWeights;
    bias = newBias;
end


plot([1:iterations], gradError);
