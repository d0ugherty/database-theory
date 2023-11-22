use adventureworks;

/**
Some of the Adventure Works Employees were hired using the new Adventure Works recruitment system. These are the
employees whose employee ID is found in the Job Candidate table. Write a query to count the number of successful
recruits.
a. Using a WHERE clause.
b. Without a WHERE clause. (Hint: In SQL, what are you able to count?)
**/
SELECT 
count(jc.JobCandidateID) as number_employees
from jobcandidate jc
where jc.EmployeeID is not null;

SELECT
count(jc.EmployeeID) as number_employees
from jobcandidate jc;

-- How many records are in the employee table?
 SELECT count(e.EmployeeID) as `employee table count`
 from employee e;	-- 290
 
 /** 
 Join the employee table with the department table. 
 Count the number of records for each department name and include a
rollup. How does this rollup compare with the result in question 2? What is going on here?
-- It returns a sum of 296 employees even though there are only 290 unique employee reords.
-- Because the tables were joined through employee department history, an employee may have multiple records
-- if they've moved departments. 
**/

select d.Name as department_name,
count(*) as emp_count
from employee e
join employeedepartmenthistory edh on e.EmployeeID = edh.EmployeeID
join department d on edh.DepartmentID = d.DepartmentID
GROUP BY d.Name WITH ROLLUP; 

/** 
Redo query 3, but instead of counting records, count the number of distinct employee ids. Did this solve the problem?
-- Yes, it solved the problem.
**/
select d.Name as department_name,
count(distinct(edh.EmployeeID)) as emp_count	-- returns a count of 290
from employee e
join employeedepartmenthistory edh on e.EmployeeID = edh.EmployeeID
join department d on edh.DepartmentID = d.DepartmentID
GROUP BY d.Name WITH ROLLUP;

/**
Modify this query to only show departments having 10 or more staff
**/

select d.Name as department_name,
count(distinct edh.EmployeeID) as emp_count	-- returns a count of 290
from employee e
join employeedepartmenthistory edh on e.EmployeeID = edh.EmployeeID
join department d on edh.DepartmentID = d.DepartmentID
group by d.Name
having count(distinct(edh.EmployeeID) > 10);

/** 
Produce the report on the right, showing the current and former
members of the Purchasing Department.
-- see the report in the pdf 
**/
SELECT 
c.FirstName as `First Name`,
c.LastName as `Last Name`,
c.Title as Title,
IF(edh.EndDate is Null, "Current Member", "Former Member") AS `Status`
from contact c
join employee e on c.ContactID = e.ContactID
join employeedepartmenthistory edh on e.EmployeeID = edh.EmployeeID
join department d on edh.DepartmentID = d.DepartmentID
where d.Name = "Purchasing";


   


