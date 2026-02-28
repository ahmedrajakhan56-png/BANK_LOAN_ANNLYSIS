 BANK_LOAN_ANNLYSIS

 Bank Loan Report - Data Analysis Project

 Project Overview
This comprehensive Bank Loan Report project provides detailed insights into lending activities, loan performance, and borrower profiles. The analysis helps in monitoring key metrics, identifying trends, and making data-driven decisions for portfolio management.

 Problem Statement
The bank needs a comprehensive reporting solution to monitor and assess lending activities. This includes tracking loan applications, funded amounts, repayments, interest rates, and borrower financial health through various KPIs and visualizations.

 Key Features


 Dashboard 1: Summary
- Total Loan Applications (MTD & MoM analysis)
- Total Funded Amount (MTD & MoM analysis)
-Total Amount Received (MTD & MoM analysis)
- Average Interest Rate (MTD & MoM analysis)
- Average Debt-to-Income Ratio (MTD & MoM analysis)
- Good Loan vs Bad Loan KPIs (Percentage, Applications, Funded Amount, Received Amount)

Dashboard 2: Overview
- Monthly Trends (Line Chart - Applications, Funded, Received)
- Regional Analysis (Filled Map by State)
- Loan Term Analysis (Donut Chart - 36 vs 60 months)
- Employee Length Analysis (Bar Chart)
- Loan Purpose Breakdown (Bar Chart)
-Home Ownership Analysis(Tree Map)

 Dashboard 3: Details
- Comprehensive grid view of all loan data
- Borrower profile information
- Loan performance metrics

  Technologies Used
- Database: Microsoft SQL Server
- Query Language: T-SQL
- Visualization: Power BI / Tableau (अपने according बदलें)
- **Version Control:** Git & GitHub

## 📁 Repository Structure

Bank-Loan-Report/
│
├── README.md
├── LICENSE
├── .gitignore
│
├── SQL_Scripts/
│   ├── 01_Create_Tables.sql
│   ├── 02_Load_Data.sql
│   ├── 03_Dashboard1_Summary_KPIs.sql
│   ├── 04_Dashboard2_Overview_Charts.sql
│   ├── 05_Dashboard3_Details.sql
│   └── 06_Good_Bad_Loan_KPIs.sql
│
├── Data/
│   ├── sample_data.csv
│   └── data_dictionary.xlsx
│
├── Dashboards/
│   ├── Dashboard1_Summary.pbix (अगर Power BI use किया है)
│   ├── Dashboard2_Overview.pbix
│   ├── Dashboard3_Details.pbix
│   └── Screenshots/
│       ├── Summary_Dashboard.png
│       ├── Overview_Dashboard.png
│       └── Details_Dashboard.png
│
├── Documentation/
│   ├── Project_Report.pdf
│   └── SQL_Queries_Documentation.pdf
│
└── Requirements/
    └── requirements.txt 
