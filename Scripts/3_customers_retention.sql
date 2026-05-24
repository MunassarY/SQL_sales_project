   with lastest_order as (
      SELECT
         customerkey,
         full_name,
         total_revenue,
         row_number() OVER(PARTITION BY customerkey order by orderdate DESC) as rn,
         orderdate, 
         cohort_year,
         first_purchase_date

      FROM cohort_analysis ca 
      --GROUP BY full_name, orderdate
   ), churned_customers as (
   SELECT
      customerkey,
      full_name,
      first_purchase_date,
      orderdate as last_purchase_date,
      cohort_year,
      case
         when orderdate < (select max(orderdate) from sales) - interval '6 month'  then 'churned' else 'Active' 
         end as customer_status 

   from lastest_order
   where rn = 1 and first_purchase_date < (select max(orderdate) from sales) - interval '6 month'
   )
   select
      cohort_year,
      customer_status,
      count(customer_status) number_of_customers,
      sum(count(customer_status)) over(PARTITION by cohort_year) total_customers,
      round(count(customer_status)/ sum(count(customer_status)) over(PARTITION by cohort_year), 2) as percentage 
   from churned_customers
   group by cohort_year,customer_status


