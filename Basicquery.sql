show databases;          /*shows all databases*/
use classicmodels;       /*uses classicmodels database*/
select * from customers;       /*selects all columns from customers table*/
select customerName from customers;     /*shows customerName column from customers table*/
select customerName,city from customers;    /* ',' seperates the two columns of the table */
select 1+1;                               /*inbuilt function of mysql*/
select now();                            /*inbuilt function=shows current time*/
select concat('Abhay',' ','Navale');     /*concatination of two strings*/
select concat("Abhay"," ","Navale") as Name;     /*this query gives that concat method a column name*/
select * from employees order by firstName asc;    /*this query sorts the firstName column by ascending order alphabetically*/
select contactLastname,contactFirstname from customers order by contactLastname desc;
select contactLastname,contactFirstname from customers order by contactLastname desc,contactFirstName asc;
select orderNumber,orderlinenumber,quantityOrdered * priceEach from orderdetails order by quantityOrdered * priceEach desc;   /*The following query selects the order line items from the orderdetails table. It calculates the subtotal for each line item and sorts the result set based on the subtotal.*/
select orderlinenumber,quantityOrdered * priceEach as totalAmount from orderdetails order by totalAmount asc;
select orderNumber,status from orders order by field(status,'In Process','Canceled','On Hold','Shipped','resolved','disputed') ;
/*you can use the FIELD() function to map each order status to a number and sort the result by the result of the FIELD() function: */
select * from customers;
select customerName,country from customers where country="USA";
/*in this query where clause sorts country by "USA" name  */
select * from employees;
select officeCode,jobTitle from employees where officeCode="1" and jobTitle="Sales Rep";   
/*in this query "where" clause and "and" clause only selects officeCode=1,jobTitle="Sales Rep" */
select firstName,lastName,officeCode,jobTitle from employees where officeCode="1" or jobTitle="Sales Rep" order by officeCode,jobTitle asc;
/*This query finds employees whose job title is Sales Rep or employees who locate the office with office code 1*/
select firstName,officeCode from employees where officeCode between 1 and 3;
/*The following query finds employees who locate in offices whose office code is from 1 to 3*/
select firstName,lastName from employees where lastName like '%son' order by firstName;
/*The following query finds the employees whose last names end with the string 'son'*/
select firstName,lastName,officeCode from employees where officeCode in(1,2,3) order by officeCode;
select customerName,state from customers where state is null;
/*The following statement uses the WHERE clause with the IS NULL operator to get the rows with the values in the country column are NULL*/
select firstName,jobTitle from employees where jobTitle <> "SalesRep";
/*we can use comparison operators in mysql <> or =!,<,>,<=,>=,=*/










