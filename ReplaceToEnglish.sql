CREATE FUNCTION ReplaceToEnglish(@StringWord AS NVARCHAR(500))
RETURNS NVARCHAR(500)
BEGIN
RETURN  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(LOWER(@StringWord),'ğ','g'),'ü','u'),'ı','i'),'ş','s'),'ö','o'),'ç','c')  
END 