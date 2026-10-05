CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(50) NOT NULL
);

CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    monthly_salary NUMBER(10, 2),
    hire_date DATE,
    department_id NUMBER,
    CONSTRAINT fk_dept FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO departments VALUES (10, 'Administration');
INSERT INTO departments VALUES (20, 'IT');
INSERT INTO departments VALUES (30, 'Finance');

INSERT INTO employees VALUES (101, 'John', 'Doe', 4500.00, TO_DATE('2018-03-15', 'YYYY-MM-DD'), 10);
INSERT INTO employees VALUES (102, 'Jane', 'Smith', 6200.00, TO_DATE('2021-07-01', 'YYYY-MM-DD'), 20);
INSERT INTO employees VALUES (103, 'Alex', 'Jones', 2800.00, TO_DATE('2023-11-10', 'YYYY-MM-DD'), 30);

COMMIT;
