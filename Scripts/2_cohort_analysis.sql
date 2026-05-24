SELECT
	count(DISTINCT(customerkey)) customer_count,
	cohort_year,
	round(sum(total_revenue)) yearly_revenue,
	round(sum(total_revenue)/ count(DISTINCT(customerkey))) AS customer_revenue
FROM cohort_analysis
WHERE orderdate = first_purchase_date
GROUP BY cohort_year
ORDER BY cohort_year


