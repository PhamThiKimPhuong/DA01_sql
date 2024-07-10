---HÀM TỔNG HỢP-AGGREGATE FUNCTION
SELECT 
MAX(amount) AS max_amount, 
MIN(amount) AS min_amount, 
SUM(amount) AS sum_amount, 
AVG(amount) AS average_amount, 
COUNT(*) AS total_record, 
COUNT(DISTINCT customer_id) AS total_record_customer
FROM payment
WHERE payment_date BETWEEN '2020-01-01' AND '2020-02-01'
AND amount >0;

---GROUP BY
-- Hãy cho biết mỗi khách hàng đã trả bao nhiêu tiền 
SELECT customer_id,
SUM(amount) AS total_amount
FROM payment
GROUP BY customer_id;
--Cú pháp 
SELECT  col1, col2,
SUM()
AVG()
MIN()
MAX()
FROM table_nm
GROUP BY col1, col2;
---	GROUP BY CHALLENGE 
SELECT film_id,
MAX(replacement_cost) AS max_cost,
MIN(replacement_cost) AS min_cost,
ROUND(AVG(replacement_cost),2) AS avg_cost,
SUM(replacement_cost) AS sum_cost
FROM film
GROUP BY film_id
ORDER BY film_id;


---HAVING luôn đứng sau GROUP BY
-- Lọc dữ liệu
--Hãy cho biết khách hàng nào trả tổng tiền trên 10$ trong t1-2020
SELECT customer_id,
SUM(amount) AS sum_amount 
FROM payment
WHERE payment_date BETWEEN '2020-01-01' AND '2020-02-01'
GROUP BY customer_id
HAVING SUM(amount) >10;
--- HAVING, WHERE
--HAVING lọc SUM,MAX... sau GROUP BY
--WHERE lọc dl được đặt phái trc GROUP BY  
HAVING DATE(payment_date) IN ('','','')

---CHALLENGE MATHEMATIC 
---Bn nên tạo 1 danh sách các bộ phim có giá phim thuê ít hơn 4% giá thay thế 
SELECT film_id,
rental_rate,
replacement_cost, 
ROUND ((rental_rate/replacement_cost)*100,2) AS Percentage 
FROM film
WHERE ROUND ((rental_rate/replacement_cost)*100,2) >=4;


