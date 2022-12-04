use classicmodels;
select distinct state from customers;
select distinct lastname from employees;
select distinct city,state from customers where state is not null order by city;/*to get a unique combination of city and state from the customers table, you use the following query:*/
select 1 and 1,1 and 0,0 and 1,0 and 0,0 and null;/*logical AND operator */
select customerName,country,state from customers where country="USA" and state="CA";/*The following statement uses the AND operator to find customers who locate in California (CA), USA*/
select customerName,state,country,creditLimit from customers where country ="USA" and state ="CA" and creditLimit >100000;/*By using the AND operator, you can combine more than two Boolean expressions. For example, the following query returns the customers who locate in California, USA, and have a credit limit greater than 100K*/
select 1 or 1,1 or 0,0 or 1,0 or 0,0 or null;/*logical OR operator*/
select customerName,country from customers where country="France" or country="USA";/*The following query uses the OR operator in the WHERE clause to select all the customers located in the USA or France*/
select customerName,country,creditLimit from customers where country -"France" or country="USA" and creditLimit >100000;/*The following example uses the OR operator to select the customers who locate in the USA or France and have a credit limit greater than 100,000*/
select 1 in (1,2,3);
select officeCode,city,phone,country from offices where country in ('USA','France');/*The following example uses the IN operator to find the offices located in the USA and France*/
select 1 not in(1,2,3);
 select officeCode,city,phone from offices where country not in ("USA","France") order by city;
 select 15 between 10 and 20;     /*returns true i.e.1*/
 select productCode,productName,buyPrice from products where buyPrice between 90 and 100;/*The following example uses the BETWEEN operator to find products whose buy prices between 90 and 100*/
 select productCode,productName,buyPrice from products where buyPrice>=90 and buyPrice<=100;/*This query uses the greater than or equal (>=) and less than or equal ( <= ) operators instead of the BETWEEN operator to get the same result */
 select productCode,productName,buyPrice from products where buyPrice not between 20 and 100;/*To find the products whose buy prices are not between $20 and $100, you use the NOT BETWEEN operator as follows*/
select productCode,productName,buyPrice from products where buyPrice not between 20 and 100 order by buyPrice;
 select * from orders; /*shows all data from orders table*/
 select orderNumber,requiredDate,status from orders where requiredDate between cast('2003-01-01' as date) and cast('2003-01-31' as date);/*To check if a value is between a date range, you should explicitly cast the value to the DATE type.For example, the following statement returns the orders with the required dates between 01/01/2003 to 01/31/2003*/
 select employeeNumber,lastName,firstName from employees where firstName like "a%";/*This example uses the LIKE operator to find employees whose first names start with the letter a*/
select employeeNumber,lastName,firstName from employees where lastName like "%on";/*This example uses the LIKE operator to find employees whose last names end with the literal string on e.g., Patterson, Thompson*/
select employeeNumber,lastName,firstName from employees where lastName like "%on%";/*For example, the following query uses the LIKE operator to find all employees whose last names contain the substring on*/
 select employeeNumber,lastName,firstName from employees where firstName like "T_m";
 select customerNumber,customerName,creditLimit from customers order by creditLimit desc limit 6;/*This statement uses the LIMIT clause to get the top six customers who have the highest credit:*/
 select customerNumber,customerName,creditLimit from customers order by creditLimit limit 5;     /*this example uses the LIMIT clause to find five customers who have the lowest credits:*/
 select customerNumber,customerName,creditLimit from customers order by creditLimit,customerNumber limit 5;/*there are more than 5 customers that have credits zero, the result of the query above may lead to an inconsistent result.To fix this issue, you need to add more columns to the ORDER BY clause to constrain the row in unique order:*/
 select count(*) from customers;
 select customerNumber,customerName from customers order by customerName limit 10;/*This query uses the LIMIT clause to get rows of page 1 which contains the first 10 customers sorted by the customer name*/
 select customerNumber,customerName from customers order by customerName limit 10,10;    /*This query uses the LIMIT clause to get the rows of the second page that include rows 11 – 20:*/
 select customerName,creditLimit from customers order by creditLimit desc limit 1,1;/*For example, the following finds the customer who has the second-highest credit:*/
 select customerName,creditLimit from customers order by creditLimit desc limit 1;/*customer who has the highest credit*/
 select customerName,creditLimit from customers order by creditLimit desc ;/*Let’s double-check the result. This query returns all customers sorted by credits from high to low:*/
 select distinct state from customers where state is not null limit 5;/*The example uses the LIMIT clause with the DISTINCT clause to return the first five unique states in the customers table:*/
 select customerName,country,Salesrepemployeenumber from customers where salesRepEmployeeNumber is null order by customerName;/*The following query uses the IS NULL operator to find customers who do not have a sales representative:*/
 select customerName,country,Salesrepemployeenumber from customers where salesRepEmployeeNumber is not null order by customerName;/*This example uses the IS NOT NULL operator to get the customers who have a sales representative:*/
 create table if not exists projects( id int primary key auto_increment,title varchar(295),beginDate date not null,completeDate date not null);
 insert into projects(title,beginDate,completeDate) values("New CRM",'2022-01-01','0000-00-00'),("ERP Future",'2022-01-01','0000-00-00'),("EVP",'2020-01-01','2030-01-01');
 select * from projects where completeDate is null;/*use the IS NULL operator to select rows with the values in the complete_date column is '0000-00-00'.*/
 select concat_ws(' ',firstName,lastName) from employees;  /*The following query selects the first names and last names of employees. It uses the CONCAT_WS() function to concatenate first name and last name into full name.*/
 select concat_ws(' ',firstName,lastName) as fullName from employees;/*The column heading is quite difficult to read. To solve this, you can assign the column heading of the output a column alias as shown in the following query*/
 select concat_ws(' ',firstName,lastName) fullName from employees order by fullName;/*The following query uses the column alias in the ORDER BY clause to sort the employee’s full names alphabetically*/
 select orderNumber `Order no.`,SUM(priceEach * quantityOrdered) total from orderdetails group by 'Order no.' having total > 60000;/*The following statement selects the orders whose total amount is greater than 60000. It uses column aliases in GROUP BY and HAVING clauses.*/
 select * from employees emp;/*This query shows how to assign the employees table alias as emp*/
 select emp.firstName,emp.lastName from employees emp order by emp.firstName;/*Once a table is assigned an alias, you can refer to the table columns using the following syntax:*/ 

 
 
 
 
 
 
 
 
 