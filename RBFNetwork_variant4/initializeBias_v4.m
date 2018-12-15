function initBias = initializeBias_v4(networkDef, type,bias)
    if type == "random"
        initBias = rand(networkDef(2),1);
    elseif type == "manual"
        if size(bias) == [networkDef(2),1]
            initBias = bias;
        else
            disp("Define Bias Matrix Correctly. Proceeding with random matrix.")
            initBias = rand(networkDef(2), 1);
        end
    elseif type == "initDelta"
        initBias = zeros(networkDef(2),1);
    end
end