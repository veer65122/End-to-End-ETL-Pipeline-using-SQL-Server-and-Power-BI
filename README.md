#  End-to-End ETL Pipeline using SQL Server and Power BI

> An end-to-end Data Engineering and Business Intelligence project demonstrating the complete ETL process—from extracting raw Netflix data to building an interactive Power BI dashboard for business insights.

![GitHub License](https://img.shields.io/badge/License-MIT-green.svg)
![SQL Server](https://img.shields.io/badge/SQL%20Server-2022-red)
![Power%20BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow)
![Python](https://img.shields.io/badge/Python-3.11-blue)

---

#  Project Overview

This project demonstrates how raw Netflix content data can be transformed into meaningful business insights through a complete ETL pipeline.

The pipeline follows the traditional ETL workflow:

```
Extract → Transform → Load → Analyze → Visualize
```

The project covers:

- Data Extraction using Python
- Data Loading into SQL Server
- Data Cleaning & Transformation using SQL
- Business Analysis using SQL Queries
- Interactive Dashboard Development using Power BI
- Business Recommendations based on insights

---

#  Project Architecture

                     Netflix Dataset (CSV)
                              │
                              ▼
                    Python (Pandas)
                              │
                              ▼
                   SQLAlchemy Database Connection
                              │
                              ▼
                    SQL Server (Raw Table)
                              │
                              ▼
            SQL Cleaning & Transformation Scripts
                              │
            ┌───────────────────────────────────┐
            │ Remove Duplicates                 │
            │ Handle Missing Values             │
            │ Correct Data Types                │
            │ Normalize Genre Data             │
            │ Standardize Country Information  │
            └───────────────────────────────────┘
                              │
                              ▼
                 Cleaned SQL Server Database
                              │
                              ▼
                       Power BI Desktop
                              │
                              ▼
             Interactive Business Intelligence Dashboard

---

#  ETL Workflow

## 1️ Extract

- Imported Netflix Titles Dataset
- Loaded CSV using Pandas
- Connected Python with SQL Server using SQLAlchemy

---

## 2️ Transform

Performed extensive SQL data cleaning including:

- Removing duplicate records
- Handling NULL values
- Creating Primary Keys
- Standardizing country names
- Cleaning duration and rating columns
- Correcting inconsistent records
- Splitting Genres for analytical reporting
- Creating reporting-friendly tables

---

## 3️ Load

Loaded transformed data into SQL Server tables for reporting and analytics.

---


#  SQL Transformations

Some of the SQL operations performed include:

- CREATE TABLE
- ALTER TABLE
- PRIMARY KEY Constraints
- UPDATE
- DELETE
- Common Table Expressions (CTEs)
- ROW_NUMBER()
- Aggregate Functions
- CASE Statements
- Window Functions
- GROUP BY
- JOINS
- Views

---

#  Power BI Features Used

- Power Query
- DAX Measures
- Conditional Formatting
- KPI Cards
- Slicers
- Interactive Filters
- Bookmarks
- Matrix
- Ribbon Charts
- Shape Maps
- Smart Narratives

---

#  Tech Stack

| Technology | Purpose |
|------------|---------|
| Python | Data Extraction |
| Pandas | Data Processing |
| SQLAlchemy | SQL Server Connection |
| SQL Server | Data Warehouse |
| SQL | Data Cleaning & Transformation |
| Power BI | Dashboard Development |
| DAX | Business Calculations |
| Power Query | Data Preparation |

---

#  Dashboard Preview

> ![images alt](https://github.com/veer65122/End-to-End-ETL-Pipeline-using-SQL-Server-and-Power-BI/blob/main/Dashboard_images/1.png?raw=true)

 

#  Key Business Insights

✔ Movies account for the majority of Netflix's content.

✔ Drama is the most frequently produced genre.

✔ The United States contributes the highest number of titles.

✔ Content production accelerated significantly after 2015.

✔ TV-MA is the most common content rating.

---

#  Learning Outcomes

Through this project, I gained practical experience in:

- ETL Pipeline Development
- SQL Data Cleaning
- SQL Performance Optimization
- Data Modeling
- Data Visualization
- Power BI Dashboard Design
- Business Intelligence Reporting
- Data Storytelling

---

#  Future Improvements

- Incremental ETL Loading
- SQL Stored Procedures
- SQL Server Agent Automation
- Azure Data Factory Integration
- Azure SQL Database
- Snowflake Data Warehouse
- CI/CD Pipeline
- Power BI Service Deployment

---

#  Contact

**Veer**

GitHub: https://github.com/veer65122


---

