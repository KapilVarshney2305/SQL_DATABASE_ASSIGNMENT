SELECT l.loan_id, l.loan_purpose, sum(l.loan_amount), avg(l.repayment_history)
FROM loan_table AS l JOIN customer_table AS c ON l.customer_id = c.customer_id
WHERE l.repayment_history >= 10 AND l.loan_status = 'Closed' group by l.loan_purpose, l.loan_id