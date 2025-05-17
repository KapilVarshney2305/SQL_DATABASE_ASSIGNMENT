SELECT
CASE WHEN c.age < 25 THEN 'Under 25'
WHEN c.age BETWEEN 25 AND 34 THEN '25-34' WHEN c.age BETWEEN 35 AND 44 THEN '35-44' WHEN c.age BETWEEN 45 AND 54 THEN '45-54'
WHEN c.age BETWEEN 55 AND 64 THEN '55-64' ELSE '65 and above' end AS age_group, 
COUNT(l.loan_id) AS total_loans, SUM(l.loan_amount) AS total_loan_amount
FROM loan_table AS l JOIN customer_table AS c ON l.customer_id = c.customer_id
GROUP BY age_group ORDER BY total_loan_amount DESC;