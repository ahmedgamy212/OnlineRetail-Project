# Online Retail End-to-End Data Analysis Project

An end-to-end data analysis project on the **Online Retail** dataset, covering the full workflow from **data cleaning in Python** to **business analysis in SQL**.

The project focuses on transforming raw transactional data into actionable insights about customers, revenue, and product performance.

## Project Objectives

- Clean and prepare raw retail transaction data
- Handle missing values, duplicates, and inconsistent formats
- Build a reusable cleaned dataset for analysis
- Calculate revenue and key business metrics
- Analyze customer value and churn risk using RFM logic
- Measure monthly revenue growth
- Identify top customers and top products by country

## Tools Used

- Python
- Pandas
- NumPy
- SQL Server
- Data Cleaning
- Data Analysis
- Business Reporting

## Dataset

The dataset contains retail transaction records with the following fields:

- InvoiceNo
- StockCode
- Description
- Quantity
- InvoiceDate
- UnitPrice
- CustomerID
- Country

## Data Cleaning Process

The dataset was cleaned using Python and Pandas through the following steps:

- Loaded the dataset with the correct text encoding
- Converted `CustomerID` to string type
- Handled missing values in `CustomerID`
- Filled missing `Description` values using the most frequent product description per `StockCode`
- Replaced any remaining missing descriptions with `Unknown Product`
- Detected and removed duplicate rows
- Cleaned the `Quantity` column and converted it to numeric
- Parsed and standardized `InvoiceDate`
- Extracted `month` and `day` features from the date column
- Exported the cleaned dataset as `Cleaned_OnlineRetail.csv`

## SQL Analysis

After cleaning the data, SQL was used to perform the main analysis.

### 1. Revenue Calculation
A new column, `Total_Price`, was added to calculate revenue per transaction:

```sql
ALTER TABLE Cleaned_OnlineRetail
ADD Total_Price DECIMAL(10,2);

UPDATE Cleaned_OnlineRetail
SET Total_Price = UnitPrice * Quantity;
```

### 2. Top 10 Customers by Total Revenue
This query identifies the highest-paying customers based on total revenue:

```sql
SELECT TOP 10
    CustomerID,
    SUM(Total_Price) AS Total_Paid
FROM Cleaned_OnlineRetail
GROUP BY CustomerID
ORDER BY Total_Paid DESC;
```

### 3. Top Revenue Product by Country
This analysis finds the top revenue-generating product for each country using ranking logic.

### 4. RFM Analysis
Customer behavior was evaluated using the **RFM model**:

- **Recency**: how recently a customer purchased
- **Frequency**: how often a customer purchased
- **Monetary**: how much a customer spent

Customers were then classified into segments such as:

- Active
- At Risk
- Churn Risk

### 5. Monthly Revenue Growth
Monthly revenue was calculated and compared with the previous month to measure growth trends.

This analysis includes:

- Monthly revenue
- Previous month revenue
- Absolute growth
- Growth percentage

## Key Business Insights

- A small group of customers contributes a large share of the revenue
- Different countries have different top-selling products
- RFM segmentation helps identify customers who are active or at risk of churn
- Revenue changes over time, making monthly growth analysis important for business decisions

## Project Workflow

1. Load raw data into Python
2. Clean and transform the dataset
3. Export cleaned data to CSV
4. Import cleaned data into SQL Server
5. Create revenue metrics
6. Run business queries and customer analysis
7. Extract insights for reporting and decision-making

## Files in This Project

- `OnlineRetail.csv` — raw dataset
- `Cleaned_OnlineRetail.csv` — cleaned dataset
- Python cleaning script
- SQL analysis queries

## Conclusion

This project demonstrates a complete data analysis workflow, starting from raw retail data and ending with meaningful business insights. It highlights practical skills in data cleaning, SQL analysis, revenue tracking, and customer segmentation.

## Author

**Magdy Mohy**

