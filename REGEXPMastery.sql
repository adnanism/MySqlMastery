use mosh_sql_store;
select *from customers
where customer_id>5
order by first_name;

Select distinct state from customers;

/*return all the products name, unit price, new price (unit price *1.1)*/

select name,unit_price ,(unit_price*1.1) from products;


/*get the orders placed in 2019*/

select *from orders
where year(order_date)>=2019;


/*get items of order #6 where total price is greater than 30*/

select*,quantity*unit_price as Total from order_items
having order_id=6 and quantity*unit_price>30 ;


/*return products with quantity in stock equal to 49, 38, 72*/

select *from products
where quantity_in_stock in(49,38,72);


/*return customers born between 1/1/1990 and 1/1/2000*/

Select *from customers
where year(birth_date) between 1990 and 2000;


/*get the orders that are not shipped*/

select *from orders
where shipped_date is null;


/* offset start from 2nd record in order_items */

select* from order_items
limit 5 offset 2;


-- customer 5 records start from 6 for pagniation (example 1-5 for one page, 6-10 for second page...)
SELECT *
FROM customers
LIMIT 5,6;


/*get top 3 loyal customers*/

select *from customers
order by points desc
limit 5;

/*get customers addresses contain TRAIL or AVENUE OR phone numbers end with 9*/

select * from customers
where address like '%TRAIL%' or address like '%avenue%' or phone like '%9';

select *from customers
where address regexp 'TRAIL|AVENUE';


/* Find the customers whose last name contain field or mac or Rose*/

SELECT *
FROM customers
WHERE last_name REGEXP 'field|mac|Rose';


/*
Get the customers whose
- first names are ELKA or AMBUR
- last names end with EY or ON
- last name start with MY or contain SE
- last name contain B followed by R or U
*/

select *from customers
where first_name regexp 'Elka|ambur';

select *from customers
where last_name regexp 'ey$|on$';

select *from customers
where last_name regexp '^my|se';
 
 select *from customers
where last_name regexp 'b[r|u]';
















