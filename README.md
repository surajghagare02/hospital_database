
# 🏥 Hospital Management SQL Project

## 📌 Project Overview

This project is a **Hospital Management System database** built using SQL. It simulates real-world hospital operations including patients, doctors, appointments, treatments, billing, and payments.

The goal of this project is to practice and demonstrate **Data Analyst skills** such as data modeling, data cleaning, and SQL-based analysis.

---

## 🗂️ Database Schema

The project includes the following tables:

* **patients** – Stores patient details
* **doctors** – Stores doctor information
* **departments** – Hospital departments
* **appointments** – Patient appointments with doctors
* **treatments** – Treatment details and costs
* **bills** – Billing information
* **payments** – Payment transactions

---

## 🔗 Relationships

* A patient can have multiple appointments
* A doctor belongs to one department
* Each appointment is linked to one patient and one doctor
* Treatments are linked to appointments
* Bills are generated per patient
* Payments are linked to bills

---

## 🧹 Data Cleaning

Performed the following steps:

* Removed duplicate records
* Handled missing values
* Standardized text formats (e.g., city names)
* Validated numeric fields (cost, age, rating)

---

## 📊 SQL Analysis Performed

### 🔹 Basic Analysis

* Total number of patients
* Total appointments
* Average patient age
* Total treatments

### 🔹 Intermediate Analysis

* Revenue generated from treatments
* Appointments handled by each doctor
* Billing per patient
* Department-wise doctor count

### 🔹 Advanced Analysis

* Patients who never had appointments
* Doctors who never treated patients
* Top-performing doctors
* Monthly revenue trends
* Repeat patients

---

## 📈 Key Insights

* Identified high revenue-generating treatments
* Found top-performing doctors based on appointments
* Detected inactive patients and doctors
* Analyzed hospital revenue trends

---

## 🛠️ Tools Used

* SQL (Oracle Database)
* SQL Developer

---

## 🚀 Future Improvements

* Add real-time data integration
* Build dashboards using Power BI or Tableau
* Include advanced analytics (predictive modeling)

---

## 📁 How to Run

1. Create tables using provided SQL scripts
2. Insert sample data
3. Run SQL queries for analysis

---

## 💡 Learning Outcome

This project helped in understanding:

* SQL Joins
* Aggregations
* Window Functions
* Data Cleaning Techniques
* Real-world Data Analysis

---

## ⭐ Conclusion

This project simulates a real-world hospital dataset and demonstrates how SQL can be used to extract meaningful business insights.

---
