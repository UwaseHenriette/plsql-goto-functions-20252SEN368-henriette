-- B4: Return department name using department ID.
# PL/SQL GOTO Statements and Functions

## Student Project

This project is an individual assignment for **Database Development with PL/SQL (INSY 8311)**.

The project demonstrates the use of PL/SQL `GOTO` statements, stored functions, exception handling, and functions used in SQL.

## Project Scenario

The project uses a simple KigaliCare Hospital Management System scenario.

The database contains three main tables:

* `DEPARTMENT` — stores hospital departments.
* `EMPLOYEES` — stores employee information, salary, department, and hire date.
* `PATIENTS` — stores patient information.

## Database Structure

### DEPARTMENT

| Attribute   | Description         |
| ----------- | ------------------- |
| `dept_id`   | Department ID       |
| `dept_name` | Department name     |
| `location`  | Department location |

### EMPLOYEES

| Attribute   | Description        |
| ----------- | ------------------ |
| `emp_id`    | Employee ID        |
| `emp_name`  | Employee name      |
| `dept_id`   | Department ID      |
| `job_title` | Employee job       |
| `salary`    | Monthly salary     |
| `hire_date` | Employee hire date |

### PATIENTS

| Attribute      | Description          |
| -------------- | -------------------- |
| `patient_id`   | Patient ID           |
| `patient_name` | Patient name         |
| `gender`       | Patient gender       |
| `age`          | Patient age          |
| `phone`        | Patient phone number |

## Assignment Tasks

### Part A — GOTO

**A1 — Number Classifier**

Uses a PL/SQL `GOTO` statement to classify an employee's salary.

**A2 — Salary Review**

Uses `GOTO` statements and conditions to review an employee's salary.

**A3 — Illegal GOTO and Fix**

Demonstrates an illegal `GOTO` statement and provides a corrected version.

**A4 — Rewrite Without GOTO**

Rewrites the salary review logic using `IF`, `ELSIF`, and `ELSE` without `GOTO`.

### Part B — Functions

**B1 — Annual Salary**

Creates a function that calculates annual salary from monthly salary.

**B2 — Years of Service**

Creates a function that calculates an employee's years of service from the hire date.

**B3 — Tax Calculator**

Creates a function that calculates tax based on salary.

**B4 — Department Name**

Creates a function that returns the department name using the department ID.

**B5 — Functions in SQL**

Uses the created functions inside a SQL `SELECT` statement.

### Part C — Combined Task

**C1 — Payroll Validator**

Creates a function that checks whether an employee's payroll information is valid.

**C2 — Reflection**

Explains what was learned, challenges faced, and how they were solved.

## Repository Structure

```text
plsql-goto-functions-<studentID>-<firstname>/
│
├── README.md
├── .gitignore
│
├── 00_setup/
│   └── create_tables.sql
│
├── 01_goto/
│   ├── A1_number_classifier.sql
│   ├── A2_salary_review.sql
│   ├── A3_illegal_goto.sql
│   └── A4_rewrite_no_goto.sql
│
├── 02_functions/
│   ├── B1_fn_annual_salary.sql
│   ├── B2_fn_years_of_service.sql
│   ├── B3_fn_calculate_tax.sql
│   ├── B4_fn_dept_name.sql
│   └── C1_fn_validate_payroll.sql
│
├── 03_tests/
│   ├── B5_functions_in_select.sql
│   ├── test_functions.sql
│   └── test_validate_payroll.sql
│
├── screenshots/
│   ├── A1_output.png
│   ├── A2_output.png
│   ├── A3_error_and_fix.png
│   ├── A4_output.png
│   ├── B5_select_output.png
│   └── C1_output.png
│
└── docs/
    └── REFLECTION.md
```

## Oracle Environment

* Database: Oracle Database
* Tool: Oracle SQL Developer
* Language: PL/SQL
* Project scenario: KigaliCare Hospital Management System

## How to Run

1. Create the database tables and insert the sample data.
2. Run the Part B functions.
3. Run the Part A GOTO programs.
4. Run the B5 and C1 test scripts.
5. Check the outputs.
6. Take the required screenshots.
7. Upload the project to a public GitHub repository.

## Challenges

The main challenges were understanding PL/SQL `GOTO` labels, creating functions with parameters and return values, handling exceptions, and using functions inside SQL statements.

These challenges were solved by testing the code step by step and checking the results in Oracle SQL Developer.

## Academic Integrity

This is an individual assignment. I used notes ,AI assistant for guidance, explanations, debugging, and understanding some PL/SQL concepts. I reviewed and tested the code in my own Oracle database and remain responsible for understanding and explaining the submitted work.


