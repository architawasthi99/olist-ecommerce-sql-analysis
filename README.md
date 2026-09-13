# 🛒 Olist E-Commerce SQL Analysis

![SQL](https://img.shields.io/badge/SQL-Analysis-blue)
![SQLite](https://img.shields.io/badge/Database-SQLite-orange)
![Dataset](https://img.shields.io/badge/Dataset-Olist-green)
![Status](https://img.shields.io/badge/Status-In%20Progress-yellow)

## 📌 Overview

This project is a **real-world SQL analysis project** based on the **Brazilian E-Commerce Public Dataset by Olist**.

The objective is to analyze an e-commerce business from multiple perspectives, including:

* 👥 Customer behavior
* 🛍️ Product performance
* 💰 Revenue and sales
* 🏪 Seller performance
* ⭐ Customer reviews
* 🚚 Delivery performance
* 💳 Payment behavior
* 📈 Business trends

Instead of working with simple SQL practice tables, this project uses multiple related tables to simulate a real-world relational database and answer practical business questions.

---

## 🎯 Project Objectives

The major objectives of this project are to:

* Analyze customer purchasing behavior
* Identify high-value customers
* Find top-performing products and sellers
* Analyze revenue by category and location
* Study monthly and yearly sales trends
* Analyze order and delivery performance
* Understand customer review patterns
* Practice complex SQL queries on relational data
* Convert business problems into SQL solutions

---

## 🗂️ Dataset

The project uses the:

**Brazilian E-Commerce Public Dataset by Olist**

The dataset contains approximately **100,000 orders** from the Brazilian e-commerce platform Olist.

### Main Tables

| Table                               | Description                        |
| ----------------------------------- | ---------------------------------- |
| `customers`                         | Customer information and location  |
| `orders`                            | Order information and order status |
| `order_items`                       | Products included in each order    |
| `order_payments`                    | Payment information                |
| `order_reviews`                     | Customer reviews and ratings       |
| `products`                          | Product information                |
| `sellers`                           | Seller information                 |
| `product_category_name_translation` | Product category translations      |

> The original dataset is not included in this repository. Please download it from Kaggle using the source mentioned below.

**Dataset Source:**
Brazilian E-Commerce Public Dataset by Olist — Kaggle

---

## 🏗️ Database Relationship

The major relationships between the tables can be represented as:

```text
                    ┌──────────────┐
                    │  customers   │
                    └──────┬───────┘
                           │
                           │ customer_id
                           ▼
                    ┌──────────────┐
                    │    orders    │
                    └──────┬───────┘
                           │
             ┌─────────────┼─────────────┐
             │             │             │
             ▼             ▼             ▼
      ┌─────────────┐ ┌────────────┐ ┌───────────────┐
      │ order_items │ │ payments   │ │    reviews    │
      └──────┬──────┘ └────────────┘ └───────────────┘
             │
       ┌─────┴──────┐
       │            │
       ▼            ▼
┌─────────────┐ ┌─────────────┐
│  products   │ │   sellers   │
└─────────────┘ └─────────────┘
```

---

# 🧠 SQL Concepts Covered

This repository progressively covers SQL concepts from beginner to advanced level.

### 🟢 Basic SQL

* `SELECT`
* `WHERE`
* `DISTINCT`
* `LIKE`
* `IN`
* `BETWEEN`
* `ORDER BY`
* `LIMIT`

### 🟡 Aggregation

* `COUNT()`
* `SUM()`
* `AVG()`
* `MIN()`
* `MAX()`
* `GROUP BY`
* `HAVING`

### 🟠 JOINs

* `INNER JOIN`
* `LEFT JOIN`
* Multiple-table JOINs
* Joining transactional and master data

### 🔵 Subqueries

* Scalar subqueries
* Multi-row subqueries
* Subqueries with `IN`
* Subqueries with `EXISTS`
* Correlated subqueries
* Nested subqueries

### 🟣 Conditional Analysis

* `CASE WHEN`
* Customer segmentation
* Order classification
* Review classification

### 🔴 Date & Time Analysis

* Yearly analysis
* Monthly analysis
* Delivery-time analysis
* Revenue trends
* Order trends

### 🟤 Advanced SQL

* CTEs
* Window functions
* `ROW_NUMBER()`
* `RANK()`
* `DENSE_RANK()`
* `LAG()`
* Running totals
* Partitioned analysis

---

# 📁 Repository Structure

```text
olist-ecommerce-sql-analysis/
│
├── README.md
│
├── 01_basic_queries.sql
├── 02_group_by_having.sql
├── 03_joins.sql
├── 04_multiple_joins.sql
├── 05_subqueries.sql
├── 06_case_when.sql
├── 07_date_analysis.sql
├── 08_ctes.sql
├── 09_window_functions.sql
│
├── 10_business_problems.sql
│
└── dataset/
    └── README.md
```

---

# 📊 Business Questions

The analysis answers questions such as:

### Customer Analysis

* Who are the highest-spending customers?
* Which states have the most customers?
* Who are the most frequent customers?
* Which customers qualify as high-value customers?

### Sales Analysis

* What is the total revenue?
* Which months generate the highest revenue?
* Which states generate the most revenue?
* Which product categories generate the most revenue?

### Product Analysis

* Which products are purchased most frequently?
* What are the highest-priced products?
* Which categories have the highest average price?
* What are the best-selling products within each category?

### Seller Analysis

* Who are the top sellers?
* Which sellers generate the highest revenue?
* Which sellers have the best review scores?
* Who are the top sellers within each state?

### Delivery Analysis

* What is the average delivery time?
* Which states have the longest delivery times?
* How many orders take more than 10 days to deliver?

### Review Analysis

* What is the average review score?
* Which categories receive the highest ratings?
* How does review score vary across sellers?

---

# 📈 Advanced Business Analysis

The project also contains more complex business scenarios combining multiple SQL concepts.

For example:

> **Identify VIP customers who have placed at least 3 orders and whose total spending is above the average customer spending.**

This requires combining:

```text
JOIN
  ↓
GROUP BY
  ↓
Aggregate Functions
  ↓
CTE / Subquery
  ↓
HAVING
  ↓
Business Logic
```

Other advanced scenarios include:

* Top 3 customers in every state
* Highest-selling product in every category
* Second-highest-selling product in every category
* Customer running spending totals
* Month-over-month revenue comparison
* Customers whose latest order exceeds their average order value
* Revenue contribution by product category

---

# 🧪 SQL Practice Approach

The queries are organized from **beginner → intermediate → advanced**.

```text
Basic Queries
      ↓
GROUP BY / HAVING
      ↓
JOINs
      ↓
Multiple JOINs
      ↓
Subqueries
      ↓
CASE WHEN
      ↓
Date Analysis
      ↓
CTEs
      ↓
Window Functions
      ↓
Business Case Studies
```

This progression makes the repository both a **SQL learning record** and a **portfolio project**.

---

# 💡 Key Skills Demonstrated

Through this project, I demonstrate the ability to:

* Understand relational database structures
* Identify relationships between tables
* Write complex SQL queries
* Analyze transactional data
* Perform customer segmentation
* Calculate business KPIs
* Extract insights from large datasets
* Solve business problems using SQL
* Use advanced SQL techniques for analytical queries

---

# 🛠️ Tools & Technologies

| Technology            | Purpose                                 |
| --------------------- | --------------------------------------- |
| SQL                   | Data analysis                           |
| SQLite                | Database                                |
| DB Browser for SQLite | Query execution & database exploration  |
| Kaggle                | Dataset source                          |
| Git & GitHub          | Version control & project documentation |

---

# 📚 Learning Outcomes

By completing this project, I strengthened my understanding of:

* Relational databases
* SQL query optimization and logical query structure
* Data aggregation
* Multi-table relationships
* Subquery-based analysis
* CTE-based analysis
* Window functions
* Business-oriented data analysis

---

# 🚀 Future Improvements

Planned improvements include:

* [ ] Add more advanced SQL business cases
* [ ] Add query execution screenshots
* [ ] Add KPI calculations
* [ ] Create a dashboard using Power BI
* [ ] Add data visualization
* [ ] Compare customer segments
* [ ] Perform cohort analysis
* [ ] Analyze customer retention
* [ ] Add query optimization examples

---

# 📌 Project Status

🚧 **In Progress**

The project is being continuously expanded with additional SQL queries, advanced business problems, and analytical use cases.

---

# 👨‍💻 Author

**Archit Awasthi**

Computer Science / Software Engineering Student

### Areas of Interest

* SQL & Database Management
* Backend Development
* Python
* Data Analysis
* Machine Learning
* Cloud Computing

---

## ⭐ If you find this project useful

Feel free to explore the SQL queries and business problems implemented in this repository.

**Built to learn SQL by solving real-world business problems.**
