-- KigaliCare Hospital Management System
-- Database Setup

CREATE TABLE departments (
    dept_id NUMBER PRIMARY KEY,
    dept_name VARCHAR2(50) NOT NULL,
    location VARCHAR2(50)
);

CREATE TABLE employees (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(100) NOT NULL,
    dept_id NUMBER,
    job_title VARCHAR2(100),
    salary NUMBER(10,2),
    hire_date DATE,
    CONSTRAINT fk_emp_dept
        FOREIGN KEY (dept_id)
        REFERENCES departments(dept_id)
);

CREATE TABLE patients (
    patient_id NUMBER PRIMARY KEY,
    patient_name VARCHAR2(100) NOT NULL,
    gender VARCHAR2(10),
    age NUMBER,
    phone VARCHAR2(20)
);

-- Department

INSERT INTO department VALUES
(1, 'Emergency', 'Block A');

INSERT INTO department VALUES
(2, 'Cardiology', 'Block B');

INSERT INTO department VALUES
(3, 'Pediatrics', 'Block C');

INSERT INTO department VALUES
(4, 'Pharmacy', 'Block D');


-- Employees

INSERT INTO employees VALUES
(1, 'alice', 1, 'nurse', 45000, DATE '2022-03-10');

INSERT INTO employees VALUES
(2, 'peter', 2, 'accountant', 60000, DATE '2020-07-15');

INSERT INTO employees VALUES
(3, 'john', 3, 'receptionist', 350000, DATE '2024-01-20');

INSERT INTO employees VALUES
(4, 'john', 4, 'surgeon', 70000, DATE '2019-05-12');

-- Patients

INSERT INTO patients VALUES
(1, 'David', 'Male', 35, '0780000001');

INSERT INTO patients VALUES
(2, 'Grace', 'Female', 28, '0780000002');

INSERT INTO patients VALUES
(3, 'Eric', 'Male', 42, '0780000003');

insert into patients values
(4,'grace','female',45,'0795668722');

COMMIT;