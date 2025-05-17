SELECT l.loan_id, l.customer_id, COUNT(t.transaction_id) AS total_missed_emis, c.name AS customer_name, c.credit_score 
FROM transaction_table AS t
JOIN loan_table AS l ON t.loan_id = l.loan_id
JOIN customer_table AS c ON l.customer_id = c.customer_id WHERE t.transaction_type = 'EMI Payment'
AND t.status = 'Failed' GROUP BY l.loan_id, l.customer_id, l.loan_amount, l.loan_status, c.name, c.credit_score
having total_missed_emis > 0 ORDER BY total_missed_emis desc;