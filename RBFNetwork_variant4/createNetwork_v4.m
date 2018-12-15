function network = createNetwork_v4(networkDef)
    % This function initializes the layers of a model
    network = cell(1,size(networkDef,2));
    for iterate = 1 : size(networkDef,2)
        network{iterate} = zeros(networkDef(iterate), 1);
    end
end

