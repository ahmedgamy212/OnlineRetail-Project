# 🛒 Online Retail Analysis — RFM Customer Segmentation

## 📌 Business Goal
Using the online retail transactional dataset to build **RFM clustering** and identify the **best set of customers** the company should target for retention and growth strategies.

---

## 🛠️ Tech Stack
| Layer | Tool | Purpose |
|-------|------|---------|
| Data Cleaning | Python (Pandas) | Remove inconsistencies, correct data types |
| Data Analysis | SQL (T-SQL) | Business queries, aggregations, RFM metrics |
| Visualization | Power BI | Interactive dashboards, customer segmentation, KPIs |

---

## 🔧 Data Cleaning (Python)
- Removed inconsistencies and invalid records
- Handled missing values
- **Corrected data types** (dates, numeric fields, categorical fields) to ensure accurate SQL calculations and RFM scoring

---

## 📊 SQL Analysis

| Query | Business Purpose |
|-------|----------------|
| **Top 10 Customers** | Identify highest-value customers by total spend |
| **Top Product Revenue by Country** | Discover which products drive revenue in each market |
| **RMV / RFM Metrics** | Calculate Recency, Frequency, and Monetary values for customer segmentation |
| **Monthly Revenue Growth** | Track month-over-month revenue trends to identify seasonality and growth patterns |

&gt; 💡 *RFM (Recency, Frequency, Monetary) is a proven customer segmentation model that scores customers based on how recently they purchased, how often they buy, and how much they spend.*

---

## 📈 Power BI Dashboard

### 🎯 Dashboard Components:
- **Top Product per Country** — Best-performing product in each geographic market
- **Monthly Revenue Growth** — Trend line showing revenue evolution over time
- **Slicers & Filters** — Dynamic filtering by **Country**, **Product Descriptions**, and **CustomerID**
- **Top 10 Customers** — Ranking of the most valuable customers
- **Top 10 Products** — Best-selling products by revenue
- **Top 10 Countries** — Highest revenue-generating markets
- **KPI Cards:**
  - 📦 Count of Products
  - 💰 Total Monetary Value
  - 👥 Total Customers

---

## 🔍 Key Insights *(Fill with your actual numbers)*

- 🏆 **Top 10 Customers** account for approximately **[X%]** of total revenue — confirming the Pareto principle
- 🌍 **Top Country** by revenue is **[Country Name]**, generating **[X%]** of total sales
- 📈 **Revenue Growth:** Peak month was **[Month]**, with **[X%]** growth vs. previous month
- 🛒 **Top Product** in the leading country is **[Product Name]**, indicating strong regional preference
- 🎯 **RFM Segments:** **[X%]** of customers fall into the "Champions" or "Loyal" segments — these are the customers the company should prioritize
- ⚠️ **At-Risk Segment:** **[X%]** of customers haven't purchased recently but historically spent high amounts — prime targets for win-back campaigns

---

## 💡 Business Recommendations

1. **🎯 Target the Champions:** Focus marketing budget on the top RFM segment (high Recency + high Frequency + high Monetary) with exclusive offers and early access to new products
2. **🌍 Geo-Expansion:** Replicate the top product's success in **[Top Country]** across similar markets
3. **📢 Win-Back Campaign:** Launch targeted campaigns for at-risk customers identified through RFM scoring before they fully churn
4. **📦 Inventory Optimization:** Increase stock for the **Top 10 Products** ahead of peak months identified in the monthly growth analysis
5. **💳 Loyalty Program:** Create a tiered rewards program for the **Top 10 Customers** to increase retention and average order value

---

## 🚀 How to Run This Project

1. **Clone the repository**
2. **Data Cleaning:** Run the Python script/notebook to clean the raw transactional data and export the cleaned dataset
3. **SQL Analysis:** Import the cleaned data into SQL Server and execute the query files to generate business metrics and RFM scores
4. **Power BI:** Open the `.pbix` file and connect to the SQL database (or cleaned CSV) to explore the interactive dashboard

---

## 📸 Dashboard Preview
*(Add screenshots of your Power BI dashboard here — especially the RFM segmentation visual and KPI cards)*

---

## 📬 Contact
- LinkedIn: [Your LinkedIn URL]
- Email: [Your Email]
- GitHub: [github.com/ahmedgamy212](https://github.com/ahmedgamy212)
