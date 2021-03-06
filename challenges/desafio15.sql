DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN param VARCHAR(50))
BEGIN
SELECT
ROUND(AVG(E.SALARY),2) AS `Média salarial`
FROM hr.employees AS E
JOIN hr.jobs AS J ON J.JOB_ID = E.JOB_ID
WHERE LCASE(param) = LCASE(J.JOB_TITLE);
END $$

DELIMITER ;
