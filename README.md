# E-Commerce Sales and Customer Intelligence Analysis

## Overview

This project performs an end-to-end analysis of an e-commerce retail dataset to understand sales performance, customer behavior, and product trends. It combines Python, SQL, and Power BI to build a complete analytics pipeline from raw data to business insights.

The workflow follows a real-world data analytics process:

- Data cleaning and preprocessing  
- Exploratory data analysis (EDA)  
- Customer segmentation using RFM  
- SQL-based business queries  
- Interactive dashboard visualization  

---

## Objectives

- Clean and prepare raw transactional data  
- Analyze revenue across time, geography, and products  
- Understand customer purchasing behavior  
- Identify high-value and at-risk customers  
- Apply RFM segmentation for customer intelligence  
- Generate actionable business insights  

---

## Tech Stack

- Python (Pandas, NumPy)  
- Matplotlib, Seaborn  
- SQL Server (SSMS)  
- Power BI  
- Jupyter Notebook  

---

## Dataset

- Source: Online Retail II Dataset (UCI Machine Learning Repository)  
- Time Period: December 2009 – December 2011  
- Records: ~1 million raw rows  

### Key Columns

- Invoice (transaction ID)  
- StockCode (product ID)  
- Description (product name)  
- Quantity  
- InvoiceDate  
- Price  
- Customer_ID  
- Country  

---

## Project Structure
├── dataset/
│ ├── online_retail_II.zip
│ ├── retail_sales_cleaned.zip
│ ├── rfm_dataset.zip
│
├── notebooks/
│ └── Ecommerce_sales_customer_datacleaning_eda.ipynb
│
├── sql/
│ └── retail_sales_sql_eda.sql
│
├── dashboard/
│ └── Ecommerce_sales_dashboard.pbix
│
├── screenshots/
│ ├── page1.png
│ ├── page2.png
│ ├── page3.png
│ ├── page4.png
│
├── outputs/
│ └── rfm_table.csv
│
├── reports/
│ ├── Ecommerce_Analysis_Report.docx
│ └── E-Commerce_Sales_Customer_Intelligence_System.pdf
│
└── README.md

 ---

## How to Run

### 1. Python Analysis

- Open the notebook:
- notebooks/Ecommerce_sales_customer_datacleaning_eda.ipynb

- - Run all cells step by step  
- This will:
- Clean the dataset  
- Create features (Revenue, Month)  
- Perform EDA  
- Generate RFM table  

---

### 2. SQL Analysis

- Open SQL Server Management Studio (SSMS)  
- Create or use database: retail_sales_analysis

- - Import cleaned data  
- Run queries from: Ecommmerce_sales_customer_sql_eda.sql

---

### 3. Power BI Dashboard

- Open:dashboard/Ecommerce_sales_dashboard.pbix

- - Refresh data if required  
- Use filters (Year, Country, Month) to explore  

- Refresh dataset if needed  
- Use filters (Year, Country, Month) to explore insights  

---

## Dashboard

### Live Dashboard

https://app.powerbi.com/links/URU6G2XjBo?ctid=1490b17d-5dc9-4cbf-aeba-a2e854f521b8&pbi_source=linkShare&bookmarkGuid=aa9c8c60-89f8-4854-a2fe-0498e21381bf

---

### Dashboard Preview

#### Sales and Customer Insights
<img width="1767" height="989" src="https://github.com/user-attachments/assets/2762fcaf-f589-4865-9cf0-7c1b38034ea0" />

#### Product Performance Analysis
<img width="1782" height="1003" src="https://github.com/user-attachments/assets/e5c03d26-7d9e-4a61-8f47-c1683444914d" />

#### Customer Segmentation (RFM)
<img width="1758" height="998" src="https://github.com/user-attachments/assets/4878b878-4fd4-475a-8872-69a8b448649b" />

#### Business Insights
<img width="1775" height="991" src="https://github.com/user-attachments/assets/1efdada7-1319-458a-b0e8-b3dd3eb906a9" />

---

## Key Insights

- Revenue is highly concentrated in the United Kingdom  
- Sales show strong seasonality with peaks in November and December  
- A small percentage of customers contributes the majority of revenue (Pareto principle)  
- Customer retention is weak, with multiple one-time buyers  
- High-value customers exist within the lost segment  
- Product demand is dominated by home décor and gift items  
- Both bulk buyers (B2B) and regular customers (B2C) are present  

---

## Business Value

This project demonstrates how data can be used to:
- Improve customer retention  
- Identify high-value customers  
- Optimize product strategy  
- Support data-driven decision-making  

---

## Future Improvements

- Customer churn prediction using machine learning  
- Product recommendation system  
- Real-time analytics pipeline  
- Web-based dashboard deployment  

---

## Author

Deepanshu  
Aspiring Data Analyst

