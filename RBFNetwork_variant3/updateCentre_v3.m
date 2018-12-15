function newCentre = updateCentre_v3(centres, deltaCentre, etaCentre)
    newCentre = centres - (etaCentre * deltaCentre);
end