EX1: 
SELECT Name FROM Students
WHERE Marks >75
ORDER BY RIGHT(Name,3), ID;

EX2
SELECT user_id, 
UPPER(LEFT(name,1))||LOWER(RIGHT(name, LENGTH(NAME,1)))
FROM users;

EX3
SELECT manufacturer,
'$'||ROUND(SUM(total_sale)/1000000,0)||' '||'million' AS sale 
FROM pharmacy_sales
GROUP BY manufacturer
ORDER BY SUM(total_sales) DESC, manufacturer;

EX4
SELECT 
EXTRACT(month FROM submit_date) AS mth, 
product_id, 
ROUND(avg(stars),2) AS avg_stars
FROM reviews
GROUP BY mth,product_id
ORDER BY mth,product_id;

EX5
SELECT sender_id, 
COUNT (message _id) AS message_count 
FROM messages
WHERE EXTRACT(month FROM sent_date)=8
AND EXTRACT(year from sent_date)=2022
GROUP BY sender_id
ORDER BY message_count DESC
LIMIT 2

EX6
SELECT tweet_id
FROM tweets
WHERE LENGTH(content)>15;

EX8
SELECT 
COUNT(employee_id) AS number_employee
FROM employees
WHERE EXTRACT(month FROM joining_date) between 1 and 7 
ABD EXTRACT (year FROM joining_date)=2022;

EX9 
SELECT
POSITION('a' in first_name) AS position 
FROM worker
WHERE first_name ='Amitah';

EX10 
SELECT 
SUBSTRING (title, length(winery)+2,4)
FROM winemag_p2
WHERE country ='Nacedonia';
