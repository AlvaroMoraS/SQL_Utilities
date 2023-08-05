USE DATABASE /*digita la BD donde quieres que se cree la función*/
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[encode_base64](@value varchar(max))  
RETURNS varchar(max)
AS  
BEGIN  
    DECLARE @source varbinary(max) = convert(varbinary(max), @value)  
    RETURN cast('' as xml).value('xs:base64Binary(sql:variable("@source"))', 'varchar(max)')  
END
GO
