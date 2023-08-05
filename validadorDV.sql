USE DATABASE /*digita la BD donde quieres que se cree la función*/
GO

SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[validadorDV](@rut varchar(12))
RETURNS varchar(10)
AS 
BEGIN 
	
	DECLARE	@dig1 varchar, @dig2 varchar, @dig3 varchar, @dig4 varchar, @dig5 varchar, @dig6 varchar, @dig7 varchar, @dig8 varchar, @dig9 varchar
	, @suma  int, @resto int, @calculoFinal int, @dvCalculado varchar(1), @dvValidar varchar(1), @validacion varchar(5)

	set @dvValidar = RIGHT(@rut, 1)
	set @rut = cast(cast(replace(substring(@rut, 1, charindex('-', @rut)-1),'.','') as int) as varchar)
	
	set @rut = REPLICATE('0', 9-len(@rut))+@rut

	set @dig9 = cast(substring(@rut, 1, 1) as int)
	set @dig8 = cast(substring(@rut, 2, 1) as int)
	set @dig7 = cast(substring(@rut, 3, 1) as int)
	set @dig6 = cast(substring(@rut, 4, 1) as int)
	set @dig5 = cast(substring(@rut, 5, 1) as int)
	set @dig4 = cast(substring(@rut, 6, 1) as int)
	set @dig3 = cast(substring(@rut, 7, 1) as int)
	set @dig2 = cast(substring(@rut, 8, 1) as int)
	set @dig1 = cast(substring(@rut, 9, 1) as int)
	
	set @suma = 4*@dig9 + 3*@dig8 + 2*@dig7 + 7*@dig6 + 6*@dig5 + 5*@dig4 + 4*@dig3 + 3*@dig2 + 2*@dig1
	set @resto = @suma % 11
	SET @calculoFinal = 11 - @resto
    
    if @calculoFinal = 10
        set @dvCalculado = 'K'
    else if @calculoFinal = 11
        set @dvCalculado = '0'
    else
        set @dvCalculado = @calculoFinal
    
    -- Validación
	if @dvCalculado = @dvValidar
		set @validacion = 'OK'
	else
		set @validacion = 'ERROR'


RETURN (@validacion)

END
GO

