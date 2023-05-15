SELECT * FROM d1.clienti WHERE EXTRACT(YEAR FROM "DataNascita") = 1982

SELECT COUNT(*) FROM d1."Fatture" WHERE "Iva" = 20;

SELECT "NumeroFattura" FROM d1."Fatture" WHERE "Iva" = 20;

SELECT COUNT("NumeroFattura"),SUM("Importo"),EXTRACT(YEAR FROM "DataFattura") AS Year
FROM d1."Fatture"
GROUP BY Year;

SELECT * FROM d1."Prodotti"
WHERE EXTRACT(YEAR FROM "DataAttivazione") = 2017 AND ("InProduzione" = true OR "InCommercio" = true)
;

SELECT COUNT(*), EXTRACT(YEAR FROM "DataFattura") AS Year
FROM d1."Fatture"
WHERE "Iva" = 20
GROUP BY Year;

SELECT COUNT(*) AS nFatture,EXTRACT(YEAR FROM "DataFattura") AS Year
FROM d1."Fatture"
WHERE "Tipologia" = 'A'
GROUP BY Year
HAVING COUNT(*) > 2

SELECT "NumeroFattura", "Tipologia", "Importo", "Iva", "IdCliente", "DataFattura", "Fornitori"."Denominazione"
	FROM d1."Fatture" JOIN d1."Fornitori" ON "Fatture"."NumeroFornitore" = "Fornitori"."NumeroFornitore"
	;
SELECT SUM("Importo"), "Clienti"."RegioneResidenza"
	FROM d1."Fatture" JOIN d1."Clienti" ON "Fatture"."IdCliente" = "Clienti"."NumeroCliente"
	GROUP BY "Clienti"."RegioneResidenza"
	;    