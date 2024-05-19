DELETE FROM skus_estandar
WHERE SKU IN (SELECT SKU FROM skus_especiales);