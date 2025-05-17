SELECT c.customer_id, c.name, c.credit_score, l.loan_id, l.default_risk FROM customer_table as c 
JOIN loan_table as l ON c.customer_id  = l.customer_id  WHERE l.default_risk = 'High' 
GROUP BY c.customer_id, c.name, c.credit_score, l.loan_id, l.loan_amount, l.default_risk 
ORDER BY c.credit_score asc;