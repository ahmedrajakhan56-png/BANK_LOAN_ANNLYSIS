SELECT COUNT(id) AS Total_Loan_Applications
FROM loan_data;

SELECT SUM(loan_amount) AS Total_Funded_Amount
FROM loan_data;

SELECT 
    COUNT(id) AS MTD_Loan_Applications,
    SUM(loan_amount) AS MTD_Funded_Amount,
    SUM(total_payment) AS MTD_Amount_Received,
    AVG(int_rate) * 100 AS MTD_Avg_Interest_Rate,
    AVG(dti) * 100 AS MTD_Avg_DTI
FROM loan_data
WHERE MONTH(issue_date) =  12 AND YEAR(issue_date) = 2021;

SELECT SUM(total_payment) AS Total_Amount_Received
FROM loan_data;

SELECT AVG(int_rate) * 100 AS Avg_Interest_Rate
FROM loan_data;


SELECT AVG(dti) * 100 AS Avg_DTI
FROM loan_data;


SELECT 
    (COUNT(CASE WHEN loan_status IN ('Fully Paid', 'Current') THEN id END) * 100.0) /
    COUNT(id) AS Good_Loan_Percentage
FROM loan_data;

SELECT COUNT(id) AS Good_Loan_Applications
FROM loan_data
WHERE loan_status IN ('Fully Paid', 'Current');

SELECT SUM(loan_amount) AS Good_Loan_Funded_Amount
FROM loan_data
WHERE loan_status IN ('Fully Paid', 'Current');

SELECT SUM(total_payment) AS Good_Loan_Received_Amount
FROM loan_data
WHERE loan_status IN ('Fully Paid', 'Current');


SELECT 
    (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100.0) /
    COUNT(id) AS Bad_Loan_Percentage
FROM loan_data;

SELECT COUNT(id) AS Bad_Loan_Applications
FROM loan_data
WHERE loan_status = 'Charged Off';


SELECT SUM(loan_amount) AS Bad_Loan_Funded_Amount
FROM loan_data
WHERE loan_status = 'Charged Off';

SELECT SUM(total_payment) AS Bad_Loan_Received_Amount
FROM loan_data
WHERE loan_status = 'Charged Off';


SELECT 
    loan_status,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received,
    AVG(int_rate) * 100 AS Avg_Interest_Rate,
    AVG(dti) * 100 AS Avg_DTI
FROM loan_data
GROUP BY loan_status;


SELECT 
    address_state AS State,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
FROM loan_data
GROUP BY address_state
ORDER BY Total_Loan_Applications DESC;

SELECT 
    term AS Loan_Term,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
FROM loan_data
GROUP BY term;

SELECT 
    purpose AS Loan_Purpose,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
FROM loan_data
GROUP BY purpose
ORDER BY Total_Loan_Applications DESC;

SELECT 
    home_ownership AS Home_Ownership,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
FROM loan_data
GROUP BY home_ownership
ORDER BY Total_Loan_Applications DESC;


SELECT 
    id AS Loan_ID,
    issue_date AS Issue_Date,
    loan_amount AS Funded_Amount,
    total_payment AS Amount_Received,
    int_rate * 100 AS Interest_Rate,
    dti * 100 AS DTI,
    loan_status,
    term,
    emp_length,
    purpose,
    home_ownership,
    address_state
FROM loan_data
ORDER BY issue_date DESC;



 
