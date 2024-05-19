SELECT
    Usuario,
    SUM(Venta) AS Total_Venta
FROM
    ventas
GROUP BY
    Usuario
ORDER BY
    Total_Venta DESC
LIMIT 10;