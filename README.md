# 🛒 Online Store Database System

A **MySQL-based Online Store Database System** designed to manage customer information, product details, and order transactions while performing sales and customer analysis using SQL.

## 📌 Project Overview

This project demonstrates the design and implementation of a relational database for an online store.

The database contains:

* **300 customer records**
* **10 products** across different categories
* **50 order transactions**
* Customer, product, and order relationships using primary and foreign keys

The database is designed using a structured relational approach and supports business-oriented SQL analysis.

## 🛠️ Technologies Used

* **MySQL**
* **SQL**
* **RDBMS Concepts**

## 🗄️ Database Structure

### Database: `OnlineStore`

The project consists of three main tables:

### 1. Customers

Stores customer information such as:

* Customer ID
* Customer Name
* City

### 2. Products

Stores product information such as:

* Product ID
* Product Name
* Category
* Price

Product categories include **Electronics, Fashion, Accessories, and Home**.

### 3. Orders

Stores transaction details such as:

* Order ID
* Customer ID
* Product ID
* Quantity
* Order Date

The `Orders` table uses foreign keys to establish relationships with the `Customers` and `Products` tables.

## 📊 SQL Concepts Demonstrated

This project covers important SQL concepts including:

* Database & Table Creation
* Primary Keys
* Foreign Keys
* Data Insertion
* Two-Table JOIN
* Three-Table JOIN
* `WHERE` clause
* `GROUP BY`
* `COUNT()`
* `SUM()`
* `AVG()`
* `MIN()`
* `MAX()`
* `IN` operator
* Subqueries

## 📈 Business Analysis

The project performs SQL-based analysis to generate useful business insights, including:

* Customer order details
* Customer and product purchase reports
* Total number of orders
* Highest and lowest product prices
* Average price of Electronics products
* City-wise customer count
* Total store revenue
* Product filtering by category

Revenue is calculated using the relationship between **order quantity and product price**.
