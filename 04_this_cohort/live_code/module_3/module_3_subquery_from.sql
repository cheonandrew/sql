/* MODULE 3 */
/* Subquery FROM */


/*1. Simple subquery in a FROM statement, e.g. for inflation
...we could imagine joining this to a more complex query perhaps */
SELECT DISTINCT
product_id
,inflation -- we define this below
FROM(
			SELECT product_id, cost_to_customer_per_qty,
			CASE WHEN cost_to_customer_per_qty < 1.00 THEN cost_to_customer_per_qty *5
			ELSE cost_to_customer_per_qty END as inflation
			FROM customer_purchases
)

/* 2. What is the single item that has been bought in the greatest quantity?*/
SELECT p.product_name
,MAX(x.quantity_purchased)

FROM product as p
INNER JOIN (
							SELECT product_id
							,count(quantity) as quantity_purchased
							
							FROM customer_purchases
							GROUP BY product_id
) AS x on p.product_id = x.product_id -- x is the result set from the inner query


