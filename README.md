# 🛒 Retail Sales & Customer Segmentation (RFM Analysis)

## 📌 Project Overview
This is an end-to-end Data Analytics and Engineering project. I extracted a raw dataset of over 541,000+ retail transactions, performed data cleaning and transformation using **MySQL**, and built an RFM (Recency, Frequency, Monetary) statistical model to segment customers. The final output is an interactive, premium-UI dashboard built in **Power BI**.

### 🛠️ Tech Stack Used
* **Database Management & ETL:** MySQL (Data Cleaning, Transformation)
* **Data Modeling:** SQL Aggregations, Date/Time formatting, RFM Logic
* **Data Visualization & BI:** Power BI, DAX (Data Analysis Expressions)

---

## 📊 The Executive Dashboard
*(Here is the preview of the final Power BI Dashboard)*

![Dashboard Preview](dashboard.png)

---

## 💡 Key Business Insights
1. **The "Whales" (Top Customers):** Successfully identified **4,338 unique VIP customers**. The scatter plot reveals that a small fraction of recent, high-spending customers generate the majority of the **$8.91M** revenue.
2. **Sales Trend:** The monthly revenue trend shows consistent growth throughout 2011, peaking massively in November 2011 just before the dataset cutoff.
3. **Product Performance:** Filtered and visualized the Top 10 revenue-generating products out of thousands of SKUs to help the business focus on high-yield inventory.

---

## ⚙️ How I Built This (The Process)
1. **Data Cleaning (SQL):** Handled missing `Customer IDs`, removed negative quantities (refunds), and bypassed MySQL safe-update modes to convert raw text dates into standard `DATETIME` formats.
2. **RFM Modeling (SQL):** Wrote complex queries to aggregate data per customer, calculating their Recency (days since last purchase), Frequency (total orders), and Monetary value (total spend).
3. **Visualization (Power BI):** Connected Power BI directly to the local MySQL server. Engineered new DAX columns for Revenue calculation and designed a custom dark-mode UI for executive presentation.
