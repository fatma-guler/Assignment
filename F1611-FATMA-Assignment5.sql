
USE SampleRetail
GO


create FUNCTION factorial2
(
	@input int
)
RETURNS nvarchar(max)
AS
BEGIN

	DECLARE
	
		@modulus int,
		@return nvarchar(max)



	SELECT @modulus = @input % 2 


	IF @input = 0
		BEGIN
		 set @return = 'Sýfýr'
		END
	ELSE IF @modulus = 0
		BEGIN
		 set @return = 'Çift'
		END
	ELSE set @return = 'Tek'

	return @return
	
END
;

select dbo.factorial2(20) A, dbo.factorial2(17) B, dbo.factorial2(0) C