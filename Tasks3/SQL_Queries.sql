#Select statements
select * from customers;
select * from employees;
select * from offices;
select * from orderdetails;
select * from orders;
select * from payments;
select * from productlines;
select * from products;

#where clause
select distinct country from customers where state is not null;

#order by
select firstName, lastName from employees order by lastName desc, firstName asc limit 5;

#group by
select status,count(*) from orders group by status;

#aggregate fuunctions
select status,sum(priceEach * quantityOrdered) as Sum from orders join orderdetails on  orders.orderNumber=orderdetails.orderNumber group by status;

select Year(orderDate) as Year, sum(priceEach * quantityOrdered) as Sum from orders join orderdetails on  orders.orderNumber=orderdetails.orderNumber 
where status = 'Shipped' group by Year having Year > 2000;

select Year(orderDate) as Year, status, avg(priceEach * quantityOrdered) as AvgSum from orders join orderdetails on  orders.orderNumber=orderdetails.orderNumber 
group by Year,status order by year;

#Joins
select distinct customerName, city, amount from customers inner join payments on customers.customerNumber = payments.customerNumber;
select distinct customerName, city, amount from customers left join payments on customers.customerNumber = payments.customerNumber;
select distinct customerName, city, amount from customers right join payments on customers.customerNumber = payments.customerNumber;

#subquery
select firstName from employees where officeCode in (select officeCode from offices where country='USA');
select productCode from (select productCode from orderdetails where quantityOrdered > 40) as MostQuantity;

SELECT productname, buyprice FROM products p1 WHERE buyprice > (SELECT AVG(buyprice) FROM products WHERE productline = p1.productline);

#Views
create view customer_info as
select CustomerName, phone from customers;

select * from customer_info;

#Index
CREATE INDEX idx_orders_orderDate
ON orders(orderDate);

select distinct year(orderDate) from orders;


