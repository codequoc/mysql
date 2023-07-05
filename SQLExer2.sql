-- find all products
SELECT * FROM bestbuy.products;
-- find all products that cost $1400
SELECT * FROM products
WHERE Price = 1400;
-- find all products that cost $11.99 or $13.99
SELECT * FROM products
WHERE Price = 11.99 OR Price = 13.99;
-- find all products that do NOT cost 11.99 - using NOT
SELECT * FROM products
WHERE NOT Price = 11.99;
-- find all products and sort them by price from greatest to least
SELECT * FROM products
ORDER BY Price DESC;
-- find all employees who don't have a middle initial
SELECT * FROM employees
WHERE MiddleInitial is null;
-- find distinct product prices
select distinct(price) from products; 
-- find all employees whose first name starts with the letter ‘j’
select * from employees
where FirstName LIKE 'j%';
-- find all Macbooks
select * from products
where Name LIKE '%macbook%';
-- find all products that are on sale
select * from products
where OnSale = 1;
-- find the average price of all products
select AVG(Price) from products;
-- find all Geek Squad employees who don't have a middle initial
select * from employees
where Title = 'Geek Squad' and MiddleInitial is null;
-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
select * from products
where StockLevel between 500 and 1200
order by Price ASC;