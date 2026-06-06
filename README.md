# 🏫 School Database System

> **A relational school database built using MySQL to manage students, teachers, classes, exams, and academic results.**  
> *The project focuses on practicing SQL design, relationships, joins, and data analysis.*

[![Portfolio](https://img.shields.io/badge/Portfolio-Visit-blue?style=for-the-badge)](https://abdallah-thyab.netlify.app/) [![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0077B5?style=for-the-badge&logo=linkedin)](https://www.linkedin.com/in/abdallah-thyab-dev)

---

## 📌 Overview

This project represents a complete school management database system.

It handles students, teachers, guardians, classes, exams, results, and rooms, and demonstrates how a real educational system can be modeled using relational databases.

---

## ✨ Features

- 🎓 Manage students and their personal data
- 👨‍🏫 Manage teachers and subjects
- 🏫 Manage classes and rooms
- 👪 Manage guardians and student relationships
- 📝 Manage exams and schedules
- 📊 Store and analyze student results
- 📈 Run SQL analytics on performance and distribution

---

## 🏗️ Database Structure

### Main Tables

- **STUDENTS** → student info, class, guardian  
- **TEACHERS** → teacher details and majors  
- **CLASSES** → class info, level, teacher, room  
- **GUARDIANS** → parent/guardian information  
- **ROOMS** → classroom capacity and type  
- **EXAMS** → exam schedules and marks  
- **RESULTS** → student exam scores  
- **TEACH_SUBJECT** → teacher workload per class  

---

## 🔗 Relationships

- Each student belongs to one class  
- Each class has one teacher  
- Each class is assigned one room  
- Each student has one guardian  
- Teachers teach multiple classes and subjects  
- Students have multiple exam results  

---

## 🛠️ SQL Concepts Used

- CREATE DATABASE / CREATE TABLE
- INSERT statements
- SELECT queries
- WHERE filtering
- JOIN operations
- GROUP BY / HAVING
- Aggregate functions (COUNT, SUM, AVG)
- LEFT JOIN (for missing data detection)

---

## 📊 Sample Queries Included

### Student Analytics
- Students by gender
- Students per class
- Students per address
- Top students by average marks

### Teacher Analytics
- Teachers by major
- Number of classes per teacher
- Weekly teaching load

### Class Analytics
- Number of students per class
- Male vs female distribution per class
- Classes without exams

### Academic Performance
- Average marks per student
- Top 3 students
- Exam results analysis

---

## 🎯 Purpose

This project was built to practice:

- Relational database design
- SQL joins and relationships
- Data aggregation and analysis
- Real-world school system modeling
- Query writing and optimization basics

---

## 📈 Key Insights from the Database

- Student distribution across classes
- Teacher workload analysis
- Academic performance tracking
- Gender distribution per class
- Identification of top-performing students
- Missing data detection (classes without exams)

---

## 👤 Author

**Abdallah Thyab**

[![Portfolio](https://img.shields.io/badge/Portfolio-Visit-blue?style=for-the-badge)](https://abdallah-thyab.netlify.app/)  
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0077B5?style=for-the-badge&logo=linkedin)](https://www.linkedin.com/in/abdallah-thyab-dev)
