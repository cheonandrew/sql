/* MODULE 2 */
/* WHERE */

/* 1. Select only customer 1 from the customer table */
SELECT * 
FROM customer
WHERE customer_id = 1

/* 2. Differentiate between AND and OR */
SELECT *
FROM customer
WHERE customer_id = 1
or customer_id = 2; -- OR is two rows, AND is 0 rows

/* 3. IN */
SELECT *
FROM customer
WHERE customer_id IN (3,4,5,6)

/* 4. LIKE */
-- all the peppers
SELECT * FROM product
WHERE  product_name LIKE '%pepper%'



/* 5. Nulls and Blanks*/
SELECT *
FROM product
WHERE product_size IS NULL 
OR product_size = '' --single quotes, different thing from NULL



/* 6. BETWEEN x AND y */
SELECT *
FROM customer
WHERE customer_id BETWEEN 1 AND 20;

SELECT *
FROM market_date_info
WHERE market_date BETWEEN '2022-10-01' AND '2022-10-31'

--------------------------------------------------------------------------------------------------------------------------------------------
