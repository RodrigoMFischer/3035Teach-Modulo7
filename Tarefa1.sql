CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    job_title VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);

INSERT INTO employees (emp_id, emp_name, job_title, salary, hire_date) 
VALUES 
    (1, 'Alice', 'Manager', 60000, '2020-01-15'),
    (2, 'Bob', 'Developer', 50000, '2019-05-20'),
    (3, 'Charlie', 'Sales', 45000, '2021-03-10'),
    (4, 'Diana', 'Manager', 62000, '2022-02-28'),
    (5, 'Eve', 'Marketing', 48000, '2020-11-12');

SELECT * FROM employees;
SELECT * FROM employees WHERE salary >= 55000;
SELECT * FROM employees WHERE hire_date >= '2020-01-01';
SELECT * FROM employees WHERE emp_name LIKE 'A%';



CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    total_amount DECIMAL(10, 2),
    order_date DATE
);

INSERT INTO orders (order_id, customer_id, total_amount, order_date) 
VALUES 
    (1, 101, 250, '2023-01-05'),
    (2, 102, 300, '2023-02-10'),
    (3, 101, 150, '2023-01-20'),
    (4, 103, 200, '2023-03-15'),
    (5, 102, 350, '2023-02-28');

SELECT * FROM orders;
SELECT SUM(total_amount) AS total_dos_pedidos FROM orders;

SELECT customer_id, SUM(total_amount) AS total_de_pedidos_por_cliente
FROM orders
GROUP BY customer_id;

SELECT
	AVG(total_amount) AS media_dos_pedidos,
	SUM(total_amount) AS total_dos_pedidos
FROM orders;
