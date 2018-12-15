function out = gaussRadFunc(x,sigma)
    out = exp((-(x.^2)) ./ (2 * (sigma.^2)));
end