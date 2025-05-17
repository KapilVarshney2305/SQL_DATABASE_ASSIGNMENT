SELECT 
c.address AS region,
SUM(l.loan_amount) AS total_loan_disbursements,
COUNT(l.loan_id) AS total_loans,
AVG(l.loan_amount) AS average_loan_amount
FROM  loan_table AS l
JOIN customer_table AS c ON l.customer_id = c.customer_id
GROUP BY c.address ORDER BY total_loan_disbursements DESC;
