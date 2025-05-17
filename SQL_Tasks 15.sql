SELECT CASE  WHEN t.remarks= 'Late penalty.' THEN 'Penalty'
WHEN t.remarks= 'On-time payment.' THEN 'Punctual.' WHEN t.remarks= 'Partial payment.' THEN 'Down Payment'
WHEN t.remarks= 'Payment missed.' THEN 'Default' END AS sentiment,
l.loan_status, SUM(l.loan_amount) AS total_loan_amount,
AVG(l.loan_amount) AS average_loan_amount
FROM loan_table AS l JOIN transaction_table AS t ON l.customer_id = t.customer_id
GROUP BY  sentiment , l.loan_status ORDER BY total_loan_amount DESC;
