WITH customer_payments AS (	
	SELECT
		customerkey,
		full_name,
		round(sum(total_revenue)) AS total_payment
	FROM cohort_analysis ca
	GROUP BY 
		customerkey,
		full_name
), customer_segment as(
	SELECT
		--customerkey,
		--total_payment
		percentile_cont(0.25) WITHIN group(ORDER BY total_payment) AS payment_25th_percentile,
		percentile_cont(0.75) WITHIN group(ORDER BY total_payment) AS payment_75th_percentile,
		percentile_cont(.5) WITHIN GROUP(ORDER BY total_payment) AS median_payment
		
	FROM customer_payments
	--GROUP BY customerkey, total_payment
	), segment_value AS (
SELECT 	
	c.*,
	CASE 
		WHEN total_payment < payment_25th_percentile THEN '3-low_value'
		WHEN total_payment > payment_75th_percentile THEN '1-high_value'
		ELSE '2-medium_value' 
	END AS customer_seg
	
FROM 
	customer_payments c
	CROSS JOIN customer_segment cs
	)
	
	SELECT
		customer_seg,
		count(customer_Seg) AS num_seg,
		sum(total_payment) AS sum_seg,
		round(sum(total_payment)/ count(customer_seg)) AS avg_seg
	FROM segment_value
 	GROUP BY customer_seg
 	ORDER BY customer_seg