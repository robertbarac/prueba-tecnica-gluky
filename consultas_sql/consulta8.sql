SELECT
    v.SKU,
    SUM(Venta) AS Total_Venta
FROM
    ventas v
LEFT JOIN
    skus_estandar se ON v.SKU = se.SKU
GROUP BY
    v.SKU
ORDER BY
    Total_Venta DESC
LIMIT 10;
