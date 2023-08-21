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
CREATE PROCEDURE [dbo].[ejecucionXdia] 
	
AS
BEGIN
	SET NOCOUNT ON;

    SET datefirst 1;

	IF DATEPART(DW, GETDATE()) = 1
		BEGIN
			PRINT('HOY ES LUNES')
		END

	IF DATEPART(DW, GETDATE()) = 2
		BEGIN
			PRINT('HOY ES MARTES')
		END

	IF DATEPART(DW, GETDATE()) = 3
		BEGIN
			PRINT('HOY ES MIERCOLES')
		END

	IF DATEPART(DW, GETDATE()) = 4
		BEGIN
			PRINT('HOY ES JUEVES')
		END

	IF DATEPART(DW, GETDATE()) = 5
		BEGIN
			PRINT('HOY ES VIERNES')
		END

	IF DATEPART(DW, GETDATE()) = 6
		BEGIN
			PRINT('HOY ES SABADO')
		END

	IF DATEPART(DW, GETDATE()) = 7
		BEGIN
			PRINT('HOY ES DOMINGO')
		END
END

