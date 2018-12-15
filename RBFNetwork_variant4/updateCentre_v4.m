function newCentre = updateCentre_v4(centres, deltaCentre, etaCentre)
    newCentre = centres - (etaCentre * deltaCentre);
end