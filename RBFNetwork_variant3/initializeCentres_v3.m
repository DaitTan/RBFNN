
function initCentres = initializeCentres_v3(networkDef, type, centres)
    if type == "random"
        initCentres = rand(networkDef(3), networkDef(2));
    elseif type == "manual"
        if size(centres) == [networkDef(2),networkDef(2)]
            initCentres = centres;
        else
            disp("Define Centres Matrix Correctly. Proceeding with random matrix.")
            initCentres = rand(networkDef(3), networkDef(2));
        end
    elseif type == "initDelta"
        initCentres = zeros(networkDef(3), networkDef(2));
    end
end
