
function initWeights = initializeWeights_v2(networkDef, type,weights)
% inialie the weights randomly or can be set manually
    if type == "random"
        initWeights = rand(networkDef(3), networkDef(2));
    elseif type == "manual"
        if size(weights) == [networkDef(3),networkDef(2)]
            initWeights = weights;
        else
            disp("Define Weights Matrix Correctly. Proceeding with random matrix.")
            initWeights = rand(networkDef(3), networkDef(2));
        end
    elseif type == "initDelta"
        initWeights = zeros(networkDef(3), networkDef(2));
    end
end
 