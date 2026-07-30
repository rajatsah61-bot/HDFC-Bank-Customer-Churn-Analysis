CREATE DATABASE hdfc_bank;
USE hdfc_bank;
CREATE TABLE customers (
    customer_id BIGINT,
    credit_score INT,
    country VARCHAR(50),
    gender VARCHAR(20),
    age INT,
    tenure INT,
    balance DECIMAL(15,2),
    products_number INT,
    credit_card INT,
    active_member INT,
    estimated_salary DECIMAL(15,2),
    churn INT
);
SHOW TABLES;
SELECT COUNT(*) FROM customers;
SELECT * FROM customers LIMIT 10;
SELECT COUNT(*) AS total_customers
FROM customers;
SELECT country, COUNT(*) AS total_customers
FROM customers
GROUP BY country;
SELECT gender, COUNT(*) AS total_customers
FROM customers
GROUP BY gender;
SELECT AVG(age) AS average_age
FROM customers;
SELECT AVG(balance) AS average_balance
FROM customers;
SELECT churn, COUNT(*) AS total_customers
FROM customers
GROUP BY churn;
SELECT country,
       COUNT(*) AS total_customers,
       SUM(churn) AS churned_customers,
       ROUND(100 * SUM(churn) / COUNT(*), 2) AS churn_rate
FROM customers
GROUP BY country
ORDER BY churn_rate DESC;
SELECT gender,
       COUNT(*) AS total_customers,
       SUM(churn) AS churned_customers
FROM customers
GROUP BY gender;
SELECT churn,
       ROUND(AVG(balance),2) AS avg_balance
FROM customers
GROUP BY churn;
SELECT churn,
       ROUND(AVG(estimated_salary),2) AS avg_salary
FROM customers
GROUP BY churn;
SELECT churn,
       ROUND(AVG(age),2) AS avg_age
FROM customers
GROUP BY churn;
SELECT *
FROM customers
ORDER BY balance DESC
LIMIT 10;
SELECT *
FROM customers
ORDER BY estimated_salary DESC
LIMIT 10;
SELECT active_member,
       COUNT(*) AS total
FROM customers
GROUP BY active_member;