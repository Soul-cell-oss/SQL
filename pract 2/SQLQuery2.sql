-- ������� 1
SELECT Sname
FROM S
WHERE Status BETWEEN 50 AND 100;

--������� 2
SELECT COUNT(*) AS TotalSuppliers
FROM S
WHERE City = '������';
--������� 3
SELECT SUM(T.Price * STD.Kolvo) AS TotalCost
FROM T, STD
WHERE T.Tnum = STD.Tnum 
  AND STD.Dnum = 'D1';
--������� 4
SELECT STD.Snum, AVG(T.Price) AS AveragePrice
FROM STD, T
WHERE STD.Tnum = T.Tnum
GROUP BY STD.Snum;
--������� 5
SELECT DISTINCT City
FROM (
    SELECT City FROM S
    UNION
    SELECT City FROM T
    UNION
    SELECT City FROM D
) AS Cities;