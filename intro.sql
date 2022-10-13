-- select productionname,customerid from orders
-- where 
-- customerid = 2 
-- and
--  create_time > '01-01-2022'
-- -- select * from orders where customerid != 2
-- select * from customers
-- inner join orders on customers.customerid = orders.customerid
-- select * from orders where customerid != 2
-- select * from customers
-- left join orders on customers.customerid = orders.customerid

SELECT * FROM customers inner join orders on customers.customerid = orders.customerid -- everything matching
SELECT * FROM customers full  join  orders on customers.customerid = orders.customerid -- all 
SELECT * FROM customers left  join  orders on customers.customerid = orders.customerid -- care about customers only
SELECT * FROM customers right join orders on customers.customerid = orders.customerid -- care about orders only

--SELECT * FROM customers full join  orders on customers.customerid = orders.customerid order by customers.customerid

-- select * from customers

update customers set name = 'emily' where customerid = 3

update customers set name = 'emily' where customerid = 2
