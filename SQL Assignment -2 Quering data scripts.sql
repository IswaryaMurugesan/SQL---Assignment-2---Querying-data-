USE employee_database;

INSERT INTO departments (department_id, department_name) VALUES
(1, 'Software Development'),
(2, 'Marketing'),
(3, 'Data Science'),
(4, 'Human Resources'),
(5, 'Product Management'),
(6, 'Content Creation'),
(7, 'Finance'),
(8, 'Design'),
(9, 'Research and Development'),
(10, 'Customer Support'),
(11, 'Business Development'),
(12, 'IT'),
(13, 'Operations');

INSERT INTO location (location_name) VALUES
('Chennai'),
('Bangalore'),
('Hyderabad'),
('Pune');

INSERT INTO employees (employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary) VALUES
(5001, 'Vihaan Singh', 'M', 27, '2015-01-20', 'Data Analyst', 3, 4, 60000),
(5002, 'Reyansh Singh', 'M', 31, '2015-03-10', 'Network Engineer', 12, 1, 80000),
(5003, 'Aaradhya Iyer', 'F', 26, '2015-05-20', 'Customer Support Executive', 10, 2, 45000),
(5004, 'Kiara Malhotra', 'F', 29, '2015-07-05', NULL, 8, 3, 70000),
(5005, 'Anvi Chaudhary', 'F', 25, '2015-09-11', 'Business Development Executive', 11, 1, 55000),
(5006, 'Dhruv Shetty', 'M', 28, '2015-11-20', 'UI Developer', 8, 2, 65000),
(5007, 'Anushka Singh', 'F', 32, '2016-01-15', 'Marketing Manager', 2, 3, 90000),
(5008, 'Diya Jha', 'F', 27, '2016-03-05', 'Graphic Designer', 8, 4, 70000),
(5009, 'Kiaan Desai', 'M', 30, '2016-05-20', 'Sales Executive', 11, 3, 55000),
(5010, 'Atharv Yadav', 'M', 29, '2016-07-10', 'Systems Administrator', 12, 4, 80000),
(5011, 'Saanvi Patel', 'F', 28, '2016-09-20', 'Marketing Analyst', 2, 1, 60000),
(5012, 'Myra Verma', 'F', 26, '2016-11-05', 'Operations Manager', 13, 2, 95000),
(5013, 'Arnav Rao', 'M', 33, '2017-01-20', 'Customer Success Manager', 10, 3, 75000),
(5014, 'Vihaan Mohan', 'M', 30, '2017-03-10', 'Supply Chain Analyst', 10, 2, 60000),
(5015, 'Ishaan Kumar', 'M', 27, '2017-05-20', 'Financial Analyst', 7, 1, 85000),
(5016, 'Zoya Khan', 'F', 31, '2017-07-05', 'Legal Counsel', 4, 4, 100000),
(5017, 'Kabir Nair', 'M', 28, '2017-09-11', 'IT Support Specialist', 12, 2, 80000),
(5018, 'Ishan Mishra', 'M', 25, '2017-11-20', 'Research Scientist', 9, 3, 75000),
(5019, 'Ishika Patel', 'F', 29, '2018-01-15', 'Talent Acquisition Specialist', 4, 4, 55000),
(5020, 'Aarav Nair', 'M', 32, '2018-03-05', 'Software Engineer', 1, 1, 90000),
(5021, 'Advik Kapoor', 'M', 26, '2018-05-20', 'Finance Analyst', 7, 3, 85000),
(5022, 'Aadhya Iyengar', 'F', 28, '2018-07-10', 'HR Specialist', 4, 4, 60000),
(5023, 'Anika Paul', 'F', 30, '2018-09-20', 'Public Relations Specialist', 2, 2, 70000),
(5024, 'Aryan Shetty', 'M', 27, '2018-11-05', 'Product Manager', 5, 1, 95000),
(5025, 'Avni Iyengar', 'F', 31, '2019-01-20', 'Data Scientist', 3, 4, 100000),
(5026, 'Vivaan Singh', 'M', 29, '2019-03-10', 'Business Analyst', 3, 2, 75000),
(5027, 'Ananya Paul', 'F', 32, '2019-05-20', 'Content Writer', 6, 3, 60000),
(5028, 'Anaya Kapoor', 'F', 26, '2019-07-05', 'Event Coordinator', 6, 1, 60000),
(5029, 'Arjun Kumar', 'M', 33, '2019-09-11', 'Quality Assurance Analyst', 12, 2, 80000),
(5030, 'Sara Iyer', 'F', 28, '2019-11-20', 'Project Manager', 5, 1, 90000);


/* 1. DISTINCT VALUES:
 -- A query to retrieve distinct salaries from the Employees table.
 */
 
 select distinct salary from employees ;
 
 /* * Provide aliases for the "age" and "salary" columns as "Employee_Age" and
"Employee_Salary", respectively.
*/

select 
	 age as Employee_Age , Salary as Employee_Salary 
     from employees ;

/* * Retrieve employees with a salary greater than ₹50000 and hired before
2016-01-01.
*/

select 
	 Employee_name , Salary , Hire_date 
      from employees 
     where salary > 50000 and hire_date < '2016-01-01' ;
     
/*  Find the employee whose designation is missing and fill it with "Data
Scientist */

select 
	 employee_id , employee_name , Designation 
     from employees 
     where designation is null ;
     
     update employees 
     set designation = 'Data Scientist'
     where designation is null ;
     
     select *
      from employees 
      where designation = 'data Scientist' ;
      
/* Find employees sorted by department ID in ascending order and salary in
descending order.
*/

select 
  employee_name , department_id , salary 
  from employees
  order by department_id asc , salary desc 
  ;
      
     
/* Display the first 5 employees hired in the year 2018 */
     
select 
	employee_name, hire_date 
	from employees 
    where hire_date between '2018-01-01' and '2018-12-01'
    order by hire_date asc
    limit 5 ;
    
/* Calculate the sum of all salaries in the Finance department */

select 
	sum(salary) as total_salary 
    from employees 
    where department_id = 7 ;
    
/* Find the minimum age among all employees */

select 
	min(age) as min_age 
    from employees ;
    
/* List the maximum salary for each location */

select 
	Location_id , 
    max(salary) as Max_salary 
    from employees
    group by location_id ;
    
/* Calculate the average salary for each designation containing the word 'Analyst' */

select 
	designation ,
    avg(salary) as avg_salary 
    from employees
    where designation like '%Analyst%'
    group by designation ;
    
    
/* Find departments with less than 3 employees */

select 
	department_id ,
	count(*) as total_employees
    from employees
    group by department_id
    Having total_employees < 3 ;
    
	
/* Find locations with female employees whose average age is below 30 */

select 
	Location_id , gender ,
    avg(age) as avg_age
    from employees
    group by location_id ,Gender 
    having avg_age < 30 and  gender = 'F';
    
    
    /* INNER JOIN:
● List employee names, their designations, and department names where
employees are assigned to a department.
*/

select 
	e.employee_name ,
    e.designation ,
    d.department_name
from 
	employees as e
Inner join 
	departments as d 
On 
	e.department_id = d.department_id ;
    
-- Left Join 
/* List all departments along with the total number of employees in each
department, including departments with no employees.
*/
   
select 
	d. department_name,
    count(e.employee_id) as total_employee_count 
    from departments as d
    Left join 
    employees as e
    on 
    d.department_id = e.department_id 
    group by 
    d.department_name , d.department_id ;
    
    
/* ● Display all locations along with the names of employees assigned to each location.
If no employees are assigned to a location, display NULL for employee name.
*/

select 
  e. employee_name ,
  l. location_name 
  from 
	employees as e
  right join 
	location as l
On 
e.location_id = l.location_id ;

/* 4. CROSS JOIN
● Show all possible combinations of departments and locations.
*/

select 
	 d.department_name,
     l. location_name 
     from 
     departments as d
     cross join 
     Location as l ;
     
select 
d. department_id ,
l.location_Name
from 
	departments as d
Cross join 
	location as l ;
    
    
 select 
d. department_name,
l.location_Id
from 
	departments as d
Cross join 
	location as l ;   
    
/* 5. SELF JOIN:
● Show pairs of employees working in the same department, excluding self-pairs.
*/

select 
	e1.employee_id ,
    e2.employee_id ,
    e1. department_id 
from 
    employees as e1
join 
	employees as e2
On 
	 e1. department_id = e2.department_id 
And 
	e1.employee_id <> e2.employee_id ;
    

 -- Window function -   
    
/* Write a window function query to rank employees by salary using rank() */

select 
	employee_name , salary ,
    rank() over ( order by salary desc) as rank_by_salary 
    from employees ;
    
/* Write a window function query to rank employees by salary within each department
using DENSE_RANK()
*/

select 
	 Employee_name , Salary , Department_id,
     dense_rank() over ( partition by department_id order by salary desc ) as deptwise_ranking_by_salary
     from employees ;
     
     
/* Write a window function query, Running total salary by department */

select 
	employee_name , department_id ,salary ,
    sum(salary) over (partition by department_id order by salary desc)  as Running_total_salary 
    from employees ;


