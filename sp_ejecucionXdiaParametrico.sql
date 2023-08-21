USE DATABASE
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Álvaro Mora Sepúlveda
-- Create date: 20-08-2023
-- Description:	sp que ejecuta una transacción distinta de acuerdo al día actual.
-- =============================================
CREATE PROCEDURE [dbo].[ejecucionXdiaParametrico] (@fecha date)

	
AS
BEGIN
	SET NOCOUNT ON;

    SET datefirst 1;

	IF DATEPART(DW, @fecha) = 1
		BEGIN
			PRINT('ES LUNES')
		END

	IF DATEPART(DW, @fecha) = 2
		BEGIN
			PRINT('ES MARTES')
		END

	IF DATEPART(DW, @fecha) = 3
		BEGIN
			PRINT('ES MIERCOLES')
		END

	IF DATEPART(DW, @fecha) = 4
		BEGIN
			PRINT('ES JUEVES')
		END

	IF DATEPART(DW, @fecha) = 5
		BEGIN
			PRINT('ES VIERNES')
		END

	IF DATEPART(DW, @fecha) = 6
		BEGIN
			PRINT('ES SABADO')
		END

	IF DATEPART(DW, @fecha) = 7
		BEGIN
			PRINT('ES DOMINGO')
		END
END

