SELECT * 
FROM CLIENTS JOIN PAWNS ON CLIENT_NUMBER = CODE_OF_CLIENT 
JOIN CATEGORIES_OF_PAWNS ON CATEGORY_NUMBER = CODE_OF_CATEGORY 
WHERE DATE_OF_DELIVERY >= 1580774400000 AND DATE_OF_DELIVERY <= 1640995200000

SELECT CLIENTS.*, TITLE, AMOUNT 
FROM CLIENTS JOIN PAWNS ON CLIENT_NUMBER = CODE_OF_CLIENT 
JOIN CATEGORIES_OF_PAWNS ON CATEGORY_NUMBER = CODE_OF_CATEGORY 
WHERE DATE_OF_RETURN IS NOT NULL

SELECT TO_CHAR(DATE_OF_DELIVERY, 'MM') AS  DATE_MONTH, TO_CHAR(DATE_OF_DELIVERY, 'YYYY') AS  DATE_YEAR, SUM(AMOUNT) AS SUM 
FROM PAWNS 
GROUP BY TO_CHAR(DATE_OF_DELIVERY, 'MM'), TO_CHAR(DATE_OF_DELIVERY, 'YYYY')