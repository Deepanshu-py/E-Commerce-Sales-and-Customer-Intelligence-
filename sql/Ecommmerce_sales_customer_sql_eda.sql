use retail_sales_analysis;

update dbo.rfm_table
set Customer_ID =REPLACE(Customer_ID, '"', '');

update dbo.rfm_table
set Segment = REPLACE(Segment, '"', '');

update dbo.rfm_table
set Customer_ID = CAST(Customer_ID AS FLOAT);

update dbo.rfm_table
set Customer_ID = CAST(Customer_ID AS int);

ALTER TABLE retail_sales_
ALTER COLUMN Month VARCHAR(7);


UPDATE retail_sales_
SET Month = 
    CAST(YEAR(InvoiceDate) AS VARCHAR) + '-' +
    RIGHT('0' + CAST(MONTH(InvoiceDate) AS VARCHAR), 2);

SELECT 
FORMAT(InvoiceDate, 'yyyy-MM-dd HH:mm:ss') AS InvoiceDate_Formatted
FROM retail_sales_;

select * from retail_sales_;

-- total revenue by country

select Country,
    Total_Revenue,
    RANK() OVER (ORDER BY Total_Revenue DESC) AS Revenue_Rank
from(
    select Country, sum(Revenue) as Total_Revenue
    from retail_sales_
    group by Country)
    as temp;

-- Total revenue by month

select Month,
    Total_Revenue,
    RANK() OVER (ORDER BY Total_Revenue DESC) AS Revenue_Rank
    from(
    select Month, sum(Revenue) as Total_Revenue
    from retail_sales_
    group by Month)
    as temp;

-- Total revenue by product

select StockCode,
    Description,
    Total_Revenue,
    RANK() OVER (ORDER BY Total_Revenue DESC) AS Revenue_Rank
    from(
    select StockCode, Description, sum(Revenue) as Total_Revenue
    from retail_sales_
    group by StockCode, Description)
    as temp;

-- Total revenue by customer

select Customer_ID,
    Total_Revenue,
    RANK() OVER (ORDER BY Total_Revenue DESC) AS Revenue_Rank
    from(
    select Customer_ID, sum(Revenue) as Total_Revenue
    from retail_sales_
    group by Customer_ID)
    as temp;


-- Monthly revenue trend 

SELECT 
    Month,
    Total_Revenue,
    RANK() OVER (ORDER BY Total_Revenue DESC) AS Revenue_Rank
FROM (
    SELECT 
        Month,
        SUM(Revenue) AS Total_Revenue
    FROM retail_sales_
    GROUP BY Month
) AS temp;


-- Top 10 products by total revenue

SELECT *
FROM (
    SELECT 
        StockCode,
        Description,
        round(SUM(Revenue),1) AS Total_Revenue,
        ROW_NUMBER() OVER (ORDER BY SUM(Revenue) DESC) AS rn
    FROM retail_sales_
    GROUP BY StockCode, Description
) t
WHERE rn <= 10;

-- Total orders and revenue per customer

select Customer_ID,
    Total_Orders,
    Total_Revenue,
    rank() over (order by Total_Revenue desc) as Revenue_Rank
    from(
    select Customer_ID,
            sum(Quantity) as Total_Orders,
            ROUND(SUM(Revenue),1) as Total_Revenue
            from retail_sales_
            group by Customer_ID
            ) as temp;

-- Average order value overall

SELECT 
    ROUND(AVG(Order_Revenue), 1) AS Average_Order_Value
FROM (
    SELECT 
        Invoice,
        SUM(Revenue) AS Order_Revenue
    FROM retail_sales_
    GROUP BY Invoice
) AS temp;

-- Average order value by country
 select country,
    Average_Order_Value,
    RANK() OVER (ORDER BY Average_Order_Value DESC) AS AOV_Rank 
    from(
    select Country,
        round(avg(revenue),1) as Average_Order_Value
        from retail_sales_
        group by Country
        )as temp;

-- Average order value by month

select Month,
    Average_Order_Value,
    RANK() OVER (ORDER BY Average_Order_Value DESC) AS AOV_Rank 
    from(
    select Month,
        round(avg(revenue),1) as Average_Order_Value
        from retail_sales_
        group by Month
        )as temp;

-- Average order value by product

select StockCode,
    Description,
    Average_Order_Value,
    RANK() OVER (ORDER BY Average_Order_Value DESC) AS AOV_Rank 
    from(
    select StockCode,
        Description,
        round(avg(revenue),1) as Average_Order_Value
        from retail_sales_
        group by StockCode, Description
        )as temp
where Average_Order_Value > 0;

-- Average order value by customer
   
select Customer_ID,
    Average_Order_Value,
    RANK() OVER (ORDER BY Average_Order_Value DESC) AS AOV_Rank 
    from(
    select Customer_ID,
        round(avg(revenue),1) as Average_Order_Value
        from retail_sales_
        group by Customer_ID
        )as temp
where Average_Order_Value > 0;

-- Average order value by customer segment

select Segment,
    Average_Order_Value,
    RANK() OVER (ORDER BY Average_Order_Value DESC) AS AOV_Rank 
    from(
    select Segment,
        round(avg(revenue),1) as Average_Order_Value
        from retail_sales_ r
        join dbo.rfm_table f on r.Customer_ID = f.Customer_ID
        group by Segment
        )as temp
where Average_Order_Value > 0;

-- Average order value by customer segment and country

select Segment,
    Country,
    Average_Order_Value,
    RANK() OVER (ORDER BY Average_Order_Value DESC) AS AOV_Rank 
    from(
    select Segment,
        Country,
        round(avg(revenue),1) as Average_Order_Value
        from retail_sales_ r
        join dbo.rfm_table f on r.Customer_ID = f.Customer_ID
        group by Segment, Country
        )as temp
where Average_Order_Value > 0;

--  Customers who bought only once (one-time buyers)

select Customer_ID,
    Total_Orders,
    Total_Revenue
    from(
    select Customer_ID,
            sum(Quantity) as Total_Orders,
            ROUND(SUM(Revenue),1) as Total_Revenue
            from retail_sales_
            group by Customer_ID
            ) as temp
where Total_Orders = 1 and Total_Revenue > 0;


--  Revenue contribution — top 20% customers vs rest
select Customer_ID,
    Total_Revenue,
    Revenue_Rank
    from(
    select Customer_ID, sum(Revenue) as Total_Revenue,
    RANK() OVER (ORDER BY sum(Revenue) DESC) AS Revenue_Rank
    from retail_sales_
    group by Customer_ID
    ) as temp
where Revenue_Rank <= (select count(distinct Customer_ID) * 0.2 from retail_sales_);

--  Revenue contribution — top 20% products vs rest

select StockCode,
    Description,
    Total_Revenue,
    Revenue_Rank
    from(
    select StockCode, Description, sum(Revenue) as Total_Revenue,
    RANK() OVER (ORDER BY sum(Revenue) DESC) AS Revenue_Rank
    from retail_sales_
    group by StockCode, Description
    ) as temp
where Revenue_Rank <= (select count(distinct StockCode) * 0.2 from retail_sales_);

-- Best performing month each year

select Year,
    Month,
    Total_Revenue,
    Revenue_Rank
    from(
    select YEAR(InvoiceDate) as Year, Month, sum(Revenue) as Total_Revenue,
    RANK() OVER (PARTITION BY YEAR(InvoiceDate) ORDER BY sum(Revenue) DESC) AS Revenue_Rank
    from retail_sales_
    group by YEAR(InvoiceDate), Month
    ) as temp
where Revenue_Rank = 1;
