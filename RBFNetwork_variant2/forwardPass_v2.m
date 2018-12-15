function [network, phi] = forwardPass_v2(networkDef, input, centres, sigma, weights, bias)
    network = createNetwork_v2(networkDef);
    
    network{1} = input';
    
    network{2} = sqrt(sum((((input' * ones(1,networkDef(2)))' - centres).^2),2));
    
    phi = gaussRadFunc_v2(network{2}, sigma);
    
    network{3} = (weights * phi) + bias;
end

