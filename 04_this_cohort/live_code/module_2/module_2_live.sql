/* MODULE 2 */
/* SELECT */

/* 1. Select everything in the customer table */
SELECT * FROM customer

/* 2. Use sql as a calculator */
SELECT 1+1 AS addition, 10*5 as multiplication, pi() as pi /* notice that this doesn't make a table, it outputs a RESULT SET */

/* 3. Add order by and limit clauses */
SELECT *
FROM customer
ORDER BY customer_first_name
LIMIT 10

/* 4. Select multiple specific columns */
SELECT customer_first_name,customer_last_name
FROM customer 						/* SQL will never look for these columns elsewhere, we have to always specify where from. */

/* 5. Add a static value in a column */
SELECT 2026 as this_year, 'March' as this_month, customer_id
FROM customer

--------------------------------------------------------------------------------------------------------------------------------------------

SELECT customer_id customer_first_name
FROM customer         /* This works as an invisible "as", which sits between the two columns. Pay attention to this.
