USE DATABASE /*digita la BD donde quieres que se cree la función*/
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE function [dbo].[decode_base64] (@encoded as varchar(max))
RETURNS varchar(max)
as
BEGIN

    declare @decoded varchar(max)
	set @decoded = cast('' as xml).value('xs:base64Binary(sql:variable("@encoded"))', 'varbinary(max)')

    RETURN @decoded

END
GO
