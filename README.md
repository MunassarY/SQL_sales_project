<<<<<<< HEAD
# SQL Project - Sales Analysis 
## Overview
Analyzing e-commerce customer behavior, retention metrics, and lifetime value to design targeted retention strategies and maximize revenue growth

## Targeted Questions 
1. **Customer Segmentation**: Which customer groups drive the highest business value?
2. **Cohort Analysis**: How does revenue performance evolve across different customer acquisition groups?
3. **Retention Analysis**: Who are our lapsing customers, and where are we losing them?

## Analysis Approach
1. ### Customer Segmentation Analysis:
  - Grouped customers into High, Mid, and Low-value tiers using Lifetime Value (LTV).
  - Calculated total revenue and key performance metrics per segment.
  - Identified top-performing segments to optimize marketing and retention.

#### 🖥️**Query**: [1_customer_segmentation.sql](/Scripts/1_customer_segmentation.sql)


#### 📈 **Visualization**:

<img src="../images/avg_seg_percentage_bar_chart.png" width="50%">

  #### 📊 **Key Findings**
  - High-Value: 25% of the customer base ($12,371$ users) drives $65.6\%$ of total revenue ($135.4\text{M}$).
  - Mid-Value: 50% of the customer base ($24,744$ users) generates $32.3\%$ of total revenue ($66.6\text{M}$).
  - Low-Value: 25% of the customer base ($12,372$ users) accounts for just $2.1\%$ of total revenue ($4.3\text{M}$).

  #### 💡 **Business Insights**
  - High-Value ($65.6\%$ revenue): Introduce a premium membership tier for the $12,371$ VIP customers to protect our primary revenue stream and prevent high-impact churn.
  - Mid-Value ($32.3\%$ revenue): Build tailored upgrade paths and personalized promotions to shift mid-tier segments into higher lifetime value brackets.
  - Low-Value ($2.1\%$ revenue): Launch automated, price-sensitive re-engagement campaigns to increase purchase frequency without increasing acquisition costs.

  ### 2. Cohort Analysis
 - Tracked revenue and customer counts across distinct acquisition groups.
 - Defined cohorts chronologically by the year of initial purchase.
 - Measured user retention dynamics to evaluate long-term engagement.


  #### 🖥️**Query**: [2_Cohor_analysis.sql](/scripts/2_cohort_analysis.sql)

  #### 📈 **Visualization**:

  <img src="../Images/customer_revenue.png" width="50%">


  #### 📊 **Key Findings** :

  - Sinking LTV: Revenue per customer is in a steady decline; recent cohorts (2022–2024) drastically underperform older groups.
  - Volume Masking Value: Total revenue increases are driven entirely by customer base growth, masking a drop in true customer value.

  #### 💡 **Strategic Actions**

  - Investigate Retention: Drill down into why individual customer value is consistently eroding year-over-year.
  - Address Acquisition Drops: Reverse the concerning 2023 customer acquisition slump to protect top-line scaling.
  - Mitigate Revenue Crises: Intervene immediately to stabilize both acquisition volume and customer value before growth stalls.


  ### 3. Customer Retention

  - Identified at-risk customer segments to proactively mitigate churn.
  - Analyzed transactional recency and behavioral purchasing patterns.
  - Generated custom user metrics to track individual account health.

  #### 🖥️**Query** : [customer_retention](/scripts/3_customers_retention.sql)


  #### 📈 **Visualization**:

  <img src="../Images/customer_stauts.png" width="50%">

  #### 📊 **Key Findings** :

  - Stabilized Churn: Cohort churn consistently plateaus at ~90% by year 3.
  - Systemic Weakness: Low retention (8–10%) spans all years, indicating a structural product or service issue.
  - Static Trends: 2022–2023 cohorts show identical decline paths, signaling ongoing risk.

  #### 💡 **Strategic Actions**

  - Optimize Early Lifecycle: Deploy heavy onboarding and retention plays within the first 24 months.
  - Prioritize High-Value Recovery: Launch precision win-back campaigns exclusively for top-tier churned users.
  - Predictive Churn Mitigation: Build proactive alerting mechanisms to catch at-risk customers early.


## Strategic Recommendations

### 1. Customer Value Optimization
- Introduce a VIP program for high-value accounts ($12,371$ users driving $65.6\%$ of revenue).
- Build tailored upgrade paths to scale mid-value users into higher spending tiers.
- Launch price-sensitive campaigns to boost transaction volume among low-value users.

### 2. Cohort Performance Strategy 
- Deploy targeted re-engagement plays to boost declining value in 2022–2024 cohorts.
- Implement loyalty/subscription programs to eliminate yearly revenue fluctuations.
- Adapt successful engagement strategies from the 2016–2018 cohorts for newer sign-ups.

### 3. Retention & Churn Prevention
- Strengthen early lifecycle engagement with onboarding rewards in years 1–2.
- Execute high-precision win-back campaigns for top-tier churned accounts.
- Establish predictive warning indicators to proactively assist at-risk users.


## Technical Details

- **Database**: PostgreSQL
- **Analysis Tools**: PostgreSQL, DBeaver, PGadmin
- **Visualization**: Google Gemini
=======

>>>>>>> ae8427c6939864a882a794c9f87d5f944f43800c
