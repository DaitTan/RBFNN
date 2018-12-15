function out = gaussRadFunc_v4(x,sigma)
    out = exp((-(x.^2)) ./ (2 * (sigma.^2)));
end