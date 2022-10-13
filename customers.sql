CREATE TABLE customers (
	customerId SERIAL PRIMARY KEY,
	firstName varchar(20) NOT null,
	lastName varchar(30) NOT null,
	email varchar(255) NOT null,
	phone varchar(10) NOT null,
	createdAt TIMESTAMP NOT null,
	updatedAt TIMESTAMP null
) 

-- DROP TABLE customers