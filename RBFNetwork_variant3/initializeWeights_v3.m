
function initWeights = initializeWeights_v3(networkDef, type,weights)
% inialie the weights randomly or can be set manually
    if type == "random"
        initWeights = rand(networkDef(2), networkDef(1));
    elseif type == "manual"
        if size(weights) == [networkDef(2),networkDef(1)]
            initWeights = weights;
        else
            disp("Define Weights Matrix Correctly. Proceeding with random matrix.")
            initWeights = rand(networkDef(2), networkDef(1));
        end
    elseif type == "initDelta"
        initWeights = zeros(networkDef(2), networkDef(1));
    end
end
 