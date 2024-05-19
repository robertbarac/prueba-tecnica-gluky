SELECT
    v.SKU,
	v.Descripcion,
    SUM(Venta) AS Total_Venta
FROM
    ventas v
LEFT JOIN
    skus_especiales se ON v.SKU = se.SKU
GROUP BY
    v.SKU
ORDER BY
    Total_Venta DESC
LIMIT 10;
