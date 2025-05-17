SELECT l.loan_purpose, COUNT(l.loan_id) AS total_loans, SUM(l.loan_amount) AS total_revenue
FROM loan_table AS l GROUP BY l.loan_purpose ORDER BY total_loans DESC, total_revenue DESC;