select e.EmployeeID, c.FirstName, c.LastName, e.HireDate, e.ManagerID, e2.ContactID, c2.FirstName, c2.LastName
from adventureworks.employee e
	join adventureworks.contact c on e.ContactID = c.ContactID
    join adventureworks.employee e2 on e.ManagerID = e2.EmployeeID 
    join adventureworks.contact c2 on e2.ContactID = c2.ContactID
where c.FirstName = 'Dan' and c.LastName = 'Bacon';

select c.FirstName, c.LastName, c.EmailAddress 
 from adventureworks.contact c
order by c.LastName;

select * from adventureworks.employee 
	cross join adventureworks.contact;


