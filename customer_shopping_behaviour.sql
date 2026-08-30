--Q1. What is the total number of customers?
SELECT COUNT(*) AS total_customers
FROM customer;

--Q2. What is the total purchase amount?
SELECT SUM(purhcase_amount) AS total_purchase_amount
FROM customer;

--Q3. What is the average purchase amount?
SELECT ROUND(AVG(purhcase_amount)::numeric, 2) AS average_purchase_amount
FROM customer;

--Q4. What is the average review rating?

SELECT ROUND(AVG(review_rating)::numeric, 2) AS average_rating
FROM customer;

--Q5. What is the total purchase amount by category?
SELECT 
    category,
    SUM(purhcase_amount) AS total_purchase_amount
FROM customer
GROUP BY category
ORDER BY total_purchase_amount DESC;

--Q6. Which category has the highest average purchase amount?
SELECT 
    category,
    ROUND(AVG(purhcase_amount)::numeric, 2) AS average_purchase_amount
FROM customer
GROUP BY category
ORDER BY average_purchase_amount DESC;

--Q7. What is the total purchase amount by location?
SELECT 
    location,
    SUM(purhcase_amount) AS total_purchase_amount
FROM customer
GROUP BY location
ORDER BY total_purchase_amount DESC;

--Q8. Which locations have the highest number of customers?
SELECT 
    location,
    COUNT(customer_id) AS customer_count
FROM customer
GROUP BY location
ORDER BY customer_count DESC;

--Q9. What is the total purchase amount by age group?
SELECT 
    age_group,
    SUM(purhcase_amount) AS total_purchase_amount
FROM customer
GROUP BY age_group
ORDER BY total_purchase_amount DESC;


--Q10. What is the average purchase amount by gender?
SELECT 
    gender,
    ROUND(AVG(purhcase_amount)::numeric, 2) AS average_purchase_amount
FROM customer
GROUP BY gender
ORDER BY average_purchase_amount DESC;

--Q11. How does subscription status affect purchasing?
SELECT 
    subscription_status,
    COUNT(*) AS customer_count,
    ROUND(AVG(purhcase_amount)::numeric, 2) AS average_purchase_amount,
    SUM(purhcase_amount) AS total_purchase_amount
FROM customer
GROUP BY subscription_status
ORDER BY total_purchase_amount DESC;


--Q12. Which payment methods are most commonly used?
SELECT 
    payment_method,
    COUNT(*) AS usage_count
FROM customer
GROUP BY payment_method
ORDER BY usage_count DESC;

--Q13. How does discount usage relate to purchase amount?
SELECT 
    discount_applied,
    COUNT(*) AS customer_count,
    ROUND(AVG(purhcase_amount)::numeric, 2) AS average_purchase_amount,
    SUM(purhcase_amount) AS total_purchase_amount
FROM customer
GROUP BY discount_applied
ORDER BY total_purchase_amount DESC;


--Q14. What is the relationship between purchase frequency and purchase amount?

SELECT 
    "Purchase_Frequency_Days",
    COUNT(*) AS customer_count,
    ROUND(AVG(purhcase_amount)::numeric, 2) AS average_purchase_amount
FROM customer
GROUP BY "Purchase_Frequency_Days"
ORDER BY "Purchase_Frequency_Days";