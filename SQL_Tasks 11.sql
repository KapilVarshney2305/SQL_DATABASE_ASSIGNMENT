SELECT l.loan_id, l.customer_id, l.loan_amount, l.repayment_history, l.loan_purpose,l.loan_status,
RANK() OVER (ORDER BY l.repayment_history desc, l.loan_amount desc) as repayment_rank
FROM loan_table AS l WHERE l.loan_status IN ('Closed') order by repayment_rank asc;