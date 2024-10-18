# SQL---Bank-Loan-Analytics-Query
The provided SQL file contains multiple queries related to a finance-related dataset. Here’s an analysis and description of each query:

 1. Query 1: Year-wise Loan Amount (KPI 1)
- Purpose: This query calculates the total loan amount issued per year.
- Explanation:
  - `year(issue_d)`: Extracts the year from the `issue_d` field (likely representing the loan issuance date).
  - `sum(loan_amnt)`: Sums the loan amounts for each year.
  - `group by year`: Groups the results by year.
  - `order by year desc`: Orders the results in descending order of years.

 2. Query 2: Grade and Sub-grade wise Revolving Balance (KPI 2)
- Purpose: This query shows the revolving balance (`revol_bal`) based on the loan's grade and sub-grade.
- Explanation:
  - Joins `finance_10` and `finance_20` tables using the `id` field.
  - Groups the results by `grade` and `sub_grade`.
  - Sums the `revol_bal` for each group (likely the outstanding revolving credit balance).
  - Orders the results by `grade` and `sub_grade` in descending order.

 3. Query 3: Total Payment for Verified vs. Non-verified Status (KPI 3)
- Purpose: This query calculates the total payments made for loans based on their verification status (e.g., verified or non-verified).
- Explanation:
  - Groups by `verification_status` and sums the `Total_Payment`.
  - Orders by total payments in descending order.
  - Limits the result to 2 statuses, likely showing the top two (verified and non-verified).

 4. Query 4: State-wise Last Credit Pull Date Wise Loan Status (KPI 4)
- Purpose: This query displays loan statuses by state and the number of times credit was pulled, grouped by loan status.
- Explanation:
  - Groups by state (`addr_state`) and `loan_status`.
  - Counts the `last_credit_pull_d` field (likely the last time credit was checked) for each state and status.
  - Orders by state and the count of credit pulls.

 5. Query 5: Home Ownership vs. Last Payment Date Stats (KPI 5)
- Purpose: This query shows the relationship between home ownership and the last payment date.
- Explanation:
  - Groups the data by `home_ownership` status (e.g., rent, own, mortgage).
  - Counts the number of `last_pymnt_d` (last payment date) for each home ownership category.
  - Orders by the total count and limits the results to the top 3 categories.

 Overall Insights:
The SQL file seems to be designed for a loan analysis report, providing key metrics (KPIs) such as:
- Yearly loan distribution.
- Revolving balances by loan grade.
- Total payments categorized by verification status.
- Loan statuses broken down by state and last credit pull date.
- The relation between home ownership and the last payment date.

These queries likely generate insights for a financial dashboard.
