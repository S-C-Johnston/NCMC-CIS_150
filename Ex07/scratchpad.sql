SELECT 100 AS Price
,0.07 AS TaxRate
,100 * 0.07 AS TaxAmount /*Eww, magic numbers*/
,100 + (100 * 0.07) AS Total /*Why is SQL gross?*/
