# E-Commerce Sales and Customer Intelligence Analysis

## Overview

This project presents an end-to-end analysis of an e-commerce retail dataset to understand sales performance, customer behavior, and product trends. It combines Python, SQL, and Power BI to build a complete analytics pipeline from raw data to business insights.

The workflow follows a real-world data analytics process:
- Data cleaning and preprocessing
- Exploratory data analysis (EDA)
- Customer segmentation using RFM
- SQL-based business queries
- Interactive dashboard visualization

---

## Live Dashboard

Access the Power BI dashboard here:

https://app.powerbi.com/links/URU6G2XjBo?ctid=1490b17d-5dc9-4cbf-aeba-a2e854f521b8&pbi_source=linkShare&bookmarkGuid=aa9c8c60-89f8-4854-a2fe-0498e21381bf

---

## Dashboard Preview

### Sales and Customer Insights

![Sales Dashboard]<img width="1767" height="989" alt="Screenshot 2026-04-09 121313" src="https://github.com/user-attachments/assets/2762fcaf-f589-4865-9cf0-7c1b38034ea0" />


### Product Performance Analysis

![Product Dashboard]<img width="1782" height="1003" alt="Screenshot 2026-04-09 121343" src="https://github.com/user-attachments/assets/e5c03d26-7d9e-4a61-8f47-c1683444914d" />


### Customer Segmentation (RFM)


![RFM Dashboard]<img width="1758" height="998" alt="Screenshot 2026-04-09 121409" src="https://github.com/user-attachments/assets/4878b878-4fd4-475a-8872-69a8b448649b" />

### Business Insights
<!-- Add screenshot here -->
![Insights Dashboard]<img width="1775" height="991" alt="Screenshot 2026-04-09 121432" src="https://github.com/user-attachments/assets/1efdada7-1319-458a-b0e8-b3dd3eb906a9" />
)

---

## Objectives

- Clean and preprocess raw transactional data  
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
│
│ ├── (raw_datase)online_retail_II.zip
│ ├── retail_sales_cleaned.zip
│ ├── rfm_dataset.zip
│
├── notebooks/
│ └── Ecommerce_sales_customer_datacleaning_eda.ipynb
│
│
├── sql eda/
│ └── retail_sales_sql_eda.sql
│
│
├── dashboard/
│ └── Ecommerce_sales_dashboard.pbix
│ │ ├── screenshots/
│ │ │ ├── page1.png
│ │ │ ├── page2.png
│ │ │ ├── page3.png
│ │ │ ├── page4.png
│
│ ├── E-Commerce Sales and Customer Intelligence System
│ └── Ecommerce_Analysis_Report
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

---

## Key Insights

- Revenue is highly concentrated in the United Kingdom  
- Sales peak during November and December (seasonality)  
- A small group of customers generates most revenue (Pareto principle)  
- Customer retention is low with several one-time buyers  
- Some high-value customers are no longer active  
- Product demand is dominated by home décor and gifting items  
- Both bulk buyers (B2B) and individual customers (B2C) are present  

---

## Business Value

This project demonstrates how data can be used to:
- Improve customer retention  
- Identify high-value customers  
- Optimize product strategy  
- Support data-driven decision-making  

---

## Future Improvements

- Customer churn prediction model  
- Recommendation system  
- Real-time data pipeline  
- Web-based dashboard deployment  

---

## Author

Deepanshu  
Aspiring Data Analyst
