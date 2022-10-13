-- select * from customers


UPDATE public.customers
	SET 
 	firstname='Angela'
 	--lastname='Spina'
-- 	email=?, 
-- 	phone=?, 
-- 	createdat=?, 
-- 	updatedat=?
	WHERE customerid=9;
	
-- Delete from customers where customerid = 8