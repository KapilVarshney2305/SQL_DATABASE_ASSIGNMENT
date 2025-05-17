SELECT t.transaction_id, t.transaction_amount, t.transaction_type, t.remarks, l.loan_amount, (t.transaction_amount / l.loan_amount) * 100 
AS transaction_percentage FROM transaction_table AS t 
JOIN loan_table AS l ON t.loan_id = l.loan_id WHERE (t.transaction_amount / l.loan_amount) > 0.30 ORDER BY transaction_percentage desc;
