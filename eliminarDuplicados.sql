--Eliminar duplicados de una tabla utilizando ROW_NUMBER()
WITH tablaConNumerosDeFila AS (
			SELECT *
			, ROW_NUMBER() OVER (PARTITION BY columna1 ORDER BY fecha asc) 'fila'
			FROM tabla
)
DELETE FROM tablaConNumerosDeFila WHERE fila > 1;

