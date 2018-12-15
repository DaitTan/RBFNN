
function initCentres = initializeCentres_v2(networkDef, type, centres)
    if type == "random"
        initCentres = rand(networkDef(2), networkDef(1));
    elseif type == "manual"
        if size(centres) == [networkDef(2),networkDef(1)]
            initCentres = centres;
        else
            disp("Define Centres Matrix Correctly. Proceeding with random matrix.")
            initCentres = rand(networkDef(2), networkDef(1));
        end
    elseif type == "initDelta"
        initCentres = zeros(networkDef(2), networkDef(1));
    end
end
