SELECT
    v.Mes,
    SUM(CASE WHEN se.SKU IS NOT NULL THEN v.Venta ELSE 0 END) AS Ventas_Estandar,
    SUM(CASE WHEN ss.SKU IS NOT NULL THEN v.Venta ELSE 0 END) AS Ventas_Especiales,
    SUM(CASE WHEN se.SKU IS NULL AND ss.SKU IS NULL THEN v.Venta ELSE 0 END) AS Ventas_Otros
FROM
    ventas v
LEFT JOIN
    skus_estandar se ON v.SKU = se.SKU
LEFT JOIN
    skus_especiales ss ON v.SKU = ss.SKU
GROUP BY
    v.Mes
ORDER BY
    v.Mes;