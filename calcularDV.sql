USE DATABASE /*digita la BD donde quieres que se cree la función*/
GO

SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[calcularDV](@rut varchar(9))
RETURNS varchar(1)
AS 
BEGIN 
	
	DECLARE	 @dig1 varchar, @dig2 varchar, @dig3 varchar, @dig4 varchar, @dig5 varchar, @dig6 varchar, @dig7 varchar, @dig8 varchar, @dig9 varchar
	, @suma  int, @resto int, @calculoFinal int, @dv varchar

	set @rut = REPLICATE('0', 9-len(@rut))+@rut

	set @dig9 = substring(@rut, 1, 1)
	set @dig8 = substring(@rut, 2, 1)
	set @dig7 = substring(@rut, 3, 1)
	set @dig6 = substring(@rut, 4, 1)
	set @dig5 = substring(@rut, 5, 1)
	set @dig4 = substring(@rut, 6, 1)
	set @dig3 = substring(@rut, 7, 1)
	set @dig2 = substring(@rut, 8, 1)
	set @dig1 = substring(@rut, 9, 1)		
	
	set @suma = 4*@dig9 + 3*@dig8 + 2*@dig7 + 7*@dig6 + 6*@dig5 + 5*@dig4 + 4*@dig3 + 3*@dig2 + 2*@dig1
	set @resto = @suma % 11
	set @calculoFinal = 11 - @resto
	
	if @calculoFinal = 10
		set @dv = 'K'
	else if @calculoFinal = 11
		set @dv = '0'
	else
		set @dv = convert(varchar, @calculoFinal)


RETURN(@dv)

END
