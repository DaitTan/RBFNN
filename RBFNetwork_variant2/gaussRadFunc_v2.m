function out = gaussRadFunc_v2(x,sigma)
    out = exp((-(x.^2)) ./ (2 * (sigma.^2)));
end