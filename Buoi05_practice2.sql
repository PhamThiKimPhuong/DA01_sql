--EX1
SELECT DISTINCT CITY FROM STATION
WHERE ID%2=0;

--EX2
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION;

--EX4
--dùng hàm CAST (AS DECIMAL) để chuyển đổi số thập phân 
SELECT 
ROUND(CAST(SUM(item_count*order_occurrences)/SUM(order_occurrences) AS DECIMAL),1) AS MEAN
FROM items_per_order;

--EX5
-- dùng hàm HAVINg COUNT(skill)=3 để hiện thị candidate_id có 1 lúc 3 kỹ năng
SELECT candidate_id FROM candidates
WHERE skill in ('Python','Tableau','PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(skill)=3
ORDER BY candidate_id;

--EX6
SELECT 
user_id, 
MAX(post_date::DATE) - MIN(post_date::DATE) AS days_between
FROM posts
WHERE DATE_PART('year', post_date::DATE) = 2021 
GROUP BY user_id
HAVING COUNT(post_id)>1;

--EX7
SELECT card_name,
MAX(issued_amount) - MIN(issued_amount) AS difference
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY card_name DESC;

--EX8
-- Thay vì tính lãi, lỗ và lọc <= 0 thì ngược lại dựa vào sum(cp-dthu)= tổng thiệt hại tính từ ban đầu 
SELECT manufacturer,
COUNT(drug) AS drug_count, 
SUM(cogs - total_sales) AS total_loss
FROM pharmacy_sales
WHERE cogs > total_sales
GROUP BY manufacturer
ORDER BY total_loss DESC;

--EX9
SELECT * FROM cinema 
WHERE id%2=1 
and description <>'boring'
ORDER BY rating DESC;

--EX10
SELECT  teacher_id ,
COUNT(DISTINCT subject_id) AS cnt FROM Teacher
GROUP BY teacher_id

--EX11
SELECT user_id,
COUNT(follower_id) as followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id ASC;

--EX12
SELECT class FROM Courses
GROUP BY class
HAVING COUNT(student) >=5;

