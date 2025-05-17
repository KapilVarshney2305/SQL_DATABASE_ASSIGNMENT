SELECT CASE 
WHEN c.credit_score < 500 THEN 'Very Poor'
WHEN c.credit_score BETWEEN 500 AND 599 THEN 'Poor'
WHEN c.credit_score BETWEEN 600 AND 699 THEN 'Fair'
WHEN c.credit_score BETWEEN 700 AND 799 THEN 'Good' ELSE 'Excellent'
END AS credit_score_range, COUNT(l.loan_id) AS total_loans, AVG(l.loan_amount) AS average_loan_amount
FROM  loan_table AS l JOIN customer_table AS c ON l.customer_id = c.customer_id 
GROUP BY credit_score_range ORDER BY average_loan_amount DESC;
