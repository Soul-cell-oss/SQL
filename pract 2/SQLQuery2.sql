-- Задание 1
SELECT Sname
FROM S
WHERE Status BETWEEN 50 AND 100;

--Задание 2
SELECT COUNT(*) AS TotalSuppliers
FROM S
WHERE City = 'Москва';
--Задание 3
SELECT SUM(T.Price * STD.Kolvo) AS TotalCost
FROM T, STD
WHERE T.Tnum = STD.Tnum 
  AND STD.Dnum = 'D1';
--Задание 4
SELECT STD.Snum, AVG(T.Price) AS AveragePrice
FROM STD, T
WHERE STD.Tnum = T.Tnum
GROUP BY STD.Snum;
--Задание 5
SELECT DISTINCT City
FROM (
    SELECT City FROM S
    UNION
    SELECT City FROM T
    UNION
    SELECT City FROM D
) AS Cities;