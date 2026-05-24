EXPLAIN ANALYZE


WITH customer_revenue AS (
	SELECT
		s.customerkey,
		s.orderdate,
		sum(s.netprice * s.quantity::double PRECISION * s.exchangerate) AS total_revenue,
		count(s.orderkey) AS num_orders,
		c.countryfull,
		concat(c.givenname, ' ' , c.surname) AS full_name,
		c.age
	FROM
		sales s
	LEFT JOIN customer c ON
		s.customerkey = c.customerkey
	GROUP BY
		s.customerkey,
		s.orderdate,
		c.countryfull,
		c.givenname,
		c.surname,
		c.age
)
 SELECT
	customerkey,
	orderdate,
	total_revenue,
	num_orders,
	countryfull,
	full_name,
	age,
	min(orderdate) OVER (
		PARTITION BY customerkey
	) AS first_purchase_date,
	EXTRACT(YEAR FROM min(orderdate) OVER (PARTITION BY customerkey)) AS cohort_year
FROM
	customer_revenue cr;