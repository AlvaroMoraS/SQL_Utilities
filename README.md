# SQL Utilities


## ▶️RUT y dígito verificador (módulo 11)
 - [Calcular dígito verificador (DV)](https://github.com/AlvaroMoraS/SQL_Utilities/blob/main/calcularDV.sql): función SQL que calcula el DV en base a un RUT de entrada, sin puntos.

	Ejemplo de uso: `SELECT Database.dbo.calcularDV(12345678)`
 - [Validador de RUT y dígito verificador](https://github.com/AlvaroMoraS/SQL_Utilities/blob/main/validadorDV.sql): función SQL que valida el RUT y DV ingresados. El RUT puede tener estos 2 formatos: '12345678-9' ó '12.345.678-9'.
   
	Ejemplo de uso 1: `SELECT Database.dbo.validadorDV('12.345.678-9')`
	 
	Ejemplo de uso 2: `SELECT Database.dbo.validadorDV('12345678-9')`



## ▶️Base64 encode/decode
 - [Codificador Base64](https://github.com/AlvaroMoraS/SQL_Utilities/blob/main/encode_base64.sql): función SQL que codifica cualquier texto en Base64.
 
 	Ejemplo de uso: `SELECT Database.dbo.encode_base64('Hola Mundo!')`
- [Decodificador Base64](https://github.com/AlvaroMoraS/SQL_Utilities/blob/main/decode_base64.sql): función SQL que decodifica cualquier texto que esté codificado en Base64.

  	Ejemplo de uso: `SELECT Database.dbo.decode_base64('SG9sYSBNdW5kbyE=')`



## ▶️Limpiar email
 - [Limpia Email](https://github.com/AlvaroMoraS/SQL_Utilities/blob/main/limpiaEmail.sql): función SQL que quita caracteres extraños dentro de un email. Además, reemplaza las vocales con tilde a vocales sin tilde.
 
 	Ejemplo de uso: `SELECT Database.dbo.limpiaEmail(' álvaro ^!.mora.sep@gmail .c om ')`



## ▶️Cambio de formato
 - [Segundos a formato mm:ss](https://github.com/AlvaroMoraS/SQL_Utilities/blob/main/secondsTo_MMSS_format.sql): función SQL que convierte un número entero en formato mm:ss.
 
 	Ejemplo de uso: `SELECT Operaciones.dbo.secondsTo_MMSS_format(65)`


## ▶️Ejecuciones por día de la semana
 - [Ejecución de transacciones distintas de acuerdo al día actual](https://github.com/AlvaroMoraS/SQL_Utilities/blob/main/sp_ejecucionXdia.sql): procedimiento almacenado (sp, por sus siglas en inglés) que permite ejecutar transacciones SQL distintas de acuerdo al día actual de la semana. Es decir, si hoy es lunes, ejecuta la transacción X; y si fuera martes, ejecuta la transacción Y.
 
 	Ejemplo de uso: `EXEC Operaciones.dbo.ejecucionXdia`


 - [Ejecución de transacciones distintas de acuerdo a la fecha enviada como parámetro](https://github.com/AlvaroMoraS/SQL_Utilities/blob/main/sp_ejecucionXdiaParametrico.sql): procedimiento almacenado (sp) que permite ejecutar transacciones SQL distintas de acuerdo a la fecha enviada como parámetro.
 
 	Ejemplo de uso: 	`

				DECLARE @fecha as date

				SET @fecha = '2023-08-14'

				EXEC Operaciones.dbo.ejecucionXdiaParametrico @fecha`
