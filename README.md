# SQL Utilities


## RUT y dígito verificador (módulo 11)
 - [Calcular dígito verificador (DV)](https://github.com/AlvaroMoraS/SQL_Utilities/blob/main/calcularDV.sql): función SQL que calcula el DV en base a un RUT de entrada, sin puntos.

	Ejemplo de uso: `SELECT Database.dbo.calcularDV(12345678)`
 - [Validador de RUT y dígito verificador](https://github.com/AlvaroMoraS/SQL_Utilities/blob/main/validadorDV.sql): función SQL que valida el RUT y DV ingresados. El RUT puede tener estos 2 formatos: '12345678-9' ó '12.345.678-9'.
   
	Ejemplo de uso 1: `SELECT Database.dbo.validadorDV('12.345.678-9')`
	 
	Ejemplo de uso 2: `SELECT Database.dbo.validadorDV('12345678-9')`


## Base64 encode/decode
 - [Codificador Base64](https://github.com/AlvaroMoraS/SQL_Utilities/blob/main/encode_base64.sql): función SQL que codifica cualquier texto en Base64.
 
 	Ejemplo de uso: `SELECT Database.dbo.encode_base64('Hola Mundo!')`
- [Decodificador Base64](https://github.com/AlvaroMoraS/SQL_Utilities/blob/main/encode_base64.sql): función SQL que decodifica cualquier texto que esté codificado en Base64.

  	Ejemplo de uso: `SELECT Database.dbo.decode_base64('SG9sYSBNdW5kbyE=')`
