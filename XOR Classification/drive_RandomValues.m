
clear;
%% Loading the initial values and setting up the tested environment


addpath("RBFNetwork_variant1", "RBFNetwork_variant2",...
    "RBFNetwork_variant3","RBFNetwork_variant4", "inputs", "train");
%% Input, Output, and Configuration

input =   [0.1,0.1;
            0.1,0.9;
            0.9,0.1;
            0.9,0.9];
        
output = [0.1;0.9;0.9;0.1];

networkDef = [2,4,1];

%% Training Phase
% This section has the code for training part of the algorithm

iterations = 100

%% Displaying the inital values for Model 1 and Model 2


weights_m12 = initializeWeights(networkDef, "random")
bias_m12 = initializeBias(networkDef, "random")
centres_m12 = initializeCentres(networkDef, "random")
sigma_m12 = initializeSigma(networkDef, "random")

%% Learning Parameters for Model 1

etaCentre_v1 = 0.05468;
etaWeight_v1=0.08849;


%% Training the model 1

[centres_v1, weights_v1, bias_v1,error_v1] = rbf_v1_train(iterations,...
  networkDef, centres_m12, sigma_m12,weights_m12, bias_m12,etaCentre_v1,...
    etaWeight_v1, input, output);


%% Learning Parameters for Model 2

etaCentre_v2 = 0.05468;
etaSigma_v2 =0.05;
etaWeight_v2=0.08849;


%% Training the model 2

[centres_v2,sigma_v2 ,weights_v2, bias_v2,error_v2] = rbf_v2_train(...
    iterations, networkDef, centres_m12,sigma_m12, weights_m12,...
    bias_m12,etaCentre_v2, etaSigma_v2, etaWeight_v2, input, output);


%% Plotting the Convergence characteristic for Model 1 and Model 2
fig = figure;
plot(1:iterations,error_v1,'DisplayName',"Model 1");
hold on;
plot([1:iterations], error_v2,'DisplayName',"Model 2");
legend;
snapnow;
saveas(fig, "images\m12_Output.jpg")
saveas(fig, "images\m12_Output.fig")
%close(fig);

%% Displaying the inital values for Model 3 and Model 4

weights_m34 = initializeWeights_v3(networkDef, "random")
bias_m34= initializeBias_v3(networkDef, "random")
centres_m34 = initializeCentres_v3(networkDef, "random")
sigma_m34 = initializeSigma_v3(networkDef, "random")

%% Learning Parameters for Model 3

etaCentre_v3 = 0.3;
etaWeight_v3=0.9;

%% Training Model 3

[centres_v3, weights_v3, bias_v3,error_v3] = rbf_v3_train(iterations,...
networkDef, centres_m34, sigma_m34, ...
weights_m34, bias_m34,etaCentre_v3, etaWeight_v3, input, output);

%% Learning Parameters for Model 4

etaCentre_v4 = 0.55;
etaSigma_v4 =0.8;
etaWeight_v4=0.99;
%% Training Model 4

[centres_v4,sigma_v4 ,weights_v4, bias_v4,error_v4] = rbf_v4_train(...
iterations, networkDef, centres_m34, sigma_m34, weights_m34, bias_m34,...
etaCentre_v4, etaSigma_v4, etaWeight_v4, input, output);

%% Plotting convergence Characteristic for Model 3 and Model 4

fig = figure;
plot([1:iterations], error_v3,'--','DisplayName','Model 3');
hold on;
plot([1:iterations], error_v4,'--','DisplayName','Model 4');
legend;
snapnow;
saveas(fig, "images\m34_Output.jpg")
saveas(fig, "images\m34_Output.fig")
%close(fig)

%% Testing Code


out = zeros(4,6);
for index = 1 : 4
    out(index,1:2) = input(index,:); 
    [network_v1, ~] = forwardPass(networkDef, input(index,:),...
        centres_v1, sigma_m12, weights_v1, bias_v1);
    [network_v2, ~] = forwardPass_v2(networkDef, input(index,:),...
        centres_v2, sigma_v2, weights_v2, bias_v2);
    [network_v3, ~] = forwardPass_v3(networkDef, input(index,:),...
        centres_v3, sigma_m34, weights_v3, bias_v3);
    [network_v4, ~] = forwardPass_v4(networkDef, input(index,:),...
        centres_v4, sigma_v4, weights_v4, bias_v4);
    out(index,3) = network_v1{end};
    out(index,4) = network_v2{end};
    out(index,5) = network_v3{end};
    out(index,6) = network_v4{end};
end

%% Deviation and Mean Deviation Calculation

out

dev = abs(output - out(:,3:6))
meanDeviation = sum(dev) / 4

%% Convergence Characteristics of all the models

fig = figure;
plot([1:iterations], error_v1,'DisplayName',"Model 1");
hold on;
plot([1:iterations], error_v2,'DisplayName',"Model 2");
hold on;
plot([1:iterations], error_v3,"--",'DisplayName',"Model 3");
hold on;
plot([1:iterations], error_v4,"--",'DisplayName',"Model 4");
legend;
snapnow;
saveas(fig, "images\finalOutput.jpg");
saveas(fig, "images\finalOutput.fig");
%close(fig)