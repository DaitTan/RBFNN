
function initSigma = initializeSigma_v2(networkDef, type,sigma)
    if type == "random"
        initSigma = rand(networkDef(2),1);
    elseif type == "manual"
        if size(sigma) == [networkDef(2),1]
            initSigma = sigma;
        else
            disp("Define Sigma Matrix Correctly. Proceeding with random matrix.")
            initSigma = rand(networkDef(2), 1);
        end
    elseif type == "initDelta"
        initSigma = zeros(networkDef(2),1);
    end
end
