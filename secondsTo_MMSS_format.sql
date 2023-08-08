USE DATABASE /*digita la BD donde quieres que se cree la función*/
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION dbo.secondsTo_MMSS_format(@seconds int)
RETURNS varchar(7)
AS
BEGIN
	
	DECLARE @minutos int, @segundos int
	SET @minutos = @seconds/60
	SET @segundos = @seconds%60

	RETURN format(@minutos, '00') + ':' + format(@segundos, '00') 

END
GO
