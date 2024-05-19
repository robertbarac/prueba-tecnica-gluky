SELECT
	Mes,
    Semana,
    SUM(Venta) AS Ventas_Totales,
    (100*SUM(Venta)/(SELECT sum(Venta) FROM ventas)) AS Porcentaje_Ventas
FROM
    ventas as v
GROUP BY
    Mes, Semana
ORDER BY
    Mes ASC;
