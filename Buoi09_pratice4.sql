---EX1
SELECT 
  SUM(CASE WHEN device_type = 'laptop' THEN 1 ELSE 0 END) AS laptop_views, 
  SUM(CASE WHEN device_type IN ('tablet', 'phone') THEN 1 ELSE 0 END) AS mobile_views 
FROM viewership;

---EX2
SELECT  x, y, z, 
CASE 
  WHEN (x + y <= z OR x + z <= y OR y + z <= x) THEN 'No'
ELSE 'Yes'
END triangle
FROM Triangle;

---EX3
SELECT
    ROUND(SUM(CASE 
      WHEN call_category IS NULL THEN 1 
      WHEN call_category = 'n/a' THEN 1
      ELSE 0
    END) * 100.0 / COUNT(case_id), 1)
FROM callers

---EX4
SELECT NAME FROM CUSTOMER 
WHERE REFEREE_ID <>2 OR REFEREE_ID is null

---EX5
SELECT
    survived,
    sum(CASE WHEN pclass = 1 THEN 1 ELSE 0 END) AS first_class,
    sum(CASE WHEN pclass = 2 THEN 1 ELSE 0 END) AS second_class,
    sum(CASE WHEN pclass = 3 THEN 1 ELSE 0 END) AS third_class
FROM titanic
GROUP BY survived;
