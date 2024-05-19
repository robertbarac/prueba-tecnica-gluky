SELECT
    Semana,
    SUM(Venta) AS Ventas_Totales,
    100.0 * SUM(Venta) / (SELECT SUM(Venta) FROM ventas) AS Porcentaje_Ventas
FROM
    ventas
GROUP BY
    Semana
ORDER BY
    Semana;