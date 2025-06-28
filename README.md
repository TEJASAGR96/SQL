 Sales and Revenue Analysis Using SQL

This project uses **PostgreSQL** to analyze sales and revenue performance across different products, categories, time periods, and regions. It answers key business questions using **SQL queries** involving `GROUP BY`, `JOIN`,and **window functions**  `ROW_NUMBER()`.

---

 Objectives

- Analyze trends in monthly revenue
- Compare regional revenue performance
- Calculate key sales  and revenue velocity

---

 Datasets Used

- `sales_data.csv` – Transaction-level data (quantity, price, date, product, region)
- `sales_products.csv` – Product catalog with category
- `sales_regions.csv` – Region codes and names

---

Key Analysis Performed

 Monthly Revenue  
Analyze revenue trends over time.

 Top 10 Products by Revenue  
Identify the highest-grossing products.

 Regional Revenue Comparison  
Compare sales performance across regions.

 Best Region per Product  
Find which region performs best for each product.

 Underperforming Products  
Spot products with low sales volume.

 Repeat Sales of Products  
Analyze how frequently each product is sold.

Day of Week Sales Analysis  
Discover which day of the week sees the most sales.

 Sales Velocity (Revenue per Day)  
Track how fast revenue is generated over time.

 Category-wise Revenue Comparison  
Understand which product categories contribute most to revenue.

---

 SQL Concepts Used

- `JOIN` and `GROUP BY`
- `DATE_TRUNC()` for time-based analysis
- Window Functions: `ROW_NUMBER()`
- Aggregate Functions: `SUM()`, `AVG()`, `COUNT()`

---

 Tools & Environment

- **PostgreSQL**
- **pgAdmin 4**
- **CSV** files for data import
- **GitHub** for version control and publication

---

 Project Outcomes

-  Data-driven understanding of sales trends
-  Identification of high-performing products and regions
-  Detection of declining and underperforming items
-  Actionable insights to support business decision-making

---

##  Files Included

- `sales_data.csv`
- `sales_products.csv`
- `sales_regions.csv`
- `sales_analysis_queries.sql`
- `README.md` (This file)

---

##  Author

**Tejas Agrawal**  
Aspiring Data Analyst | SQL

---

## ⭐ Star This Repo  
If you find this useful, consider giving it a ⭐ and sharing!
