SELECT wk.WIJKCODE as wijkCode
,  wk.NAAM as wijkNaam
,  wk.GEOMETRIE as wijkGeometrie
,  wk.DATUMOPVOER as datumBeginGeldigheidWijk
,  wk.DATUMAFVOER as datumEindeGeldigheidWijk
,  gm.NAAM as gemeenteNaam
,  gm.GEMEENTE_ID as gemeenteCode
FROM BASIS.WIJK wk
,    BASIS.GEMEENTE gm
WHERE gm.GEMEENTE_ID = wk.wijk_id
AND wk.naam = {string:wijkNaam}


