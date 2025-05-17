SELECT YEAR(STR_TO_DATE(t.transaction_date, '%m/%d/%Y')) AS transaction_year,
MONTH(STR_TO_DATE(t.transaction_date, '%m/%d/%Y')) AS transaction_month,
COUNT(t.transaction_id) AS total_transactions,
SUM(t.transaction_amount) AS total_transaction_amount,
AVG(t.transaction_amount) AS average_transaction_amount
FROM transaction_table AS t
GROUP BY  transaction_year, transaction_month ORDER BY  transaction_year ASC, transaction_month ASC;