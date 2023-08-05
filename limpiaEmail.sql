USE DATABASE  /*digita la BD donde quieres que se cree la función*/
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION dbo.limpiaEmail(@email VARCHAR(MAX))
RETURNS VARCHAR(MAX)
AS
BEGIN
	DECLARE @expresionRegular varchar(50)
	set @expresionRegular = '%[^a-z0-9@._]%'

	set @email = LOWER(@email)

    WHILE PATINDEX(@expresionRegular, @email) > 0
        SET @email = STUFF(@email, PATINDEX(@expresionRegular, @email), 1, '');

    RETURN REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(@email,'á','a'),'é','e'),'í','i'),'ó','o'),'ú','u')
END
GO
