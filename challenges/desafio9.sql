SELECT
CONCAT(E.FirstName, ' ', E.LastName) AS `Nome completo`,
COUNT(O.EmployeeID) AS `Total de pedidos`
FROM w3schools.orders AS O
JOIN w3schools.employees AS E ON E.EmployeeID = O.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
