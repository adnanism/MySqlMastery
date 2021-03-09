/*retrieve all data from customers */
SELECT * FROM
    customers
WHERE
    customer_id > 5
ORDER BY first_name;


/*return all the products name, unit price, new price (unit price *1.1) */
SELECT  name, unit_price, unit_price * 1.1 AS new_price
FROM products;


/*get the orders placed this year*/
SELECT  *
FROM orders
WHERE
    YEAR(order_date) = 2020;


/*
get items of order #6 where total price is greater than 30 
*/
SELECT 
    order_id,
    product_id,
    quantity,
    unit_price,
    quantity * unit_price AS total_price
FROM order_items
WHERE
    order_id = 6 AND quantity * unit_price > 30;


/*return products with quanity in stock equal to 49, 38, 72*/
SELECT *
FROM
    products
WHERE
    quantity_in_stock IN (49 , 38, 72);
    

/*return customers born between 1/1/1990 and 1/1/2000*/
SELECT *
FROM
    customers
WHERE
    YEAR(birth_date) BETWEEN 1990 AND 2000;
    

/*get the orders that are not shipped*/
SELECT *
FROM
    orders
WHERE
    shipped_date IS NULL;
    

/* offset start from 2nd record */
SELECT *
FROM
    order_items
LIMIT 5 OFFSET 2;


-- customer 5 records start from 6 for pagniation (example 1-5 for one page, 6-10 for second page...)
SELECT *
FROM
    customers
LIMIT 5 , 6;


/*get top 3 loyal customers*/
SELECT *
FROM
    customers
ORDER BY points DESC
LIMIT 3;
