/**
Show the US states and Canadian provinces for Adventureworks employees (we don’t need employee info), ordered by
country and then state/province. Use column CountryRegionCode for 'US' or 'CA'; use column Name to display the state or
province name. Do the query once as a JOIN and once as a SUBQUERY without any JOINS. Explain both queries. Which do
you feel is more efficient?
**/
select distinct
sp.StateProvinceCode as `State/Province Code`,
sp.Name as `Name`,
sp.CountryRegionCode as `Country`
from stateprovince sp
join address a on sp.StateProvinceID = a.StateProvinceID
join employeeaddress ea on a.AddressID = ea.AddressID
join employee e on ea.EmployeeID = e.EmployeeID
where sp.CountryRegionCode = 'US' OR sp.CountryRegionCode = 'CA';

SELECT DISTINCT
    sp.StateProvinceCode AS `State/Province Code`,
    sp.Name AS `Name`,
    sp.CountryRegionCode AS `Country`
FROM stateprovince sp
WHERE (sp.CountryRegionCode = 'US' OR sp.CountryRegionCode = 'CA')
AND EXISTS (
    SELECT 1
    FROM address a
    WHERE a.StateProvinceID = sp.StateProvinceID
    AND EXISTS (
        SELECT 1
        FROM employeeaddress ea
        WHERE ea.AddressID = a.AddressID
        AND EXISTS (
            SELECT 1
            FROM employee e
            WHERE e.EmployeeID = ea.EmployeeID
        )
    )
);

/**
2. Adventure Works also hires engineers, who will have the word 'Engineer' in their job title. Create the report below using
subqueries to retrieve the minimum, average, and maximum pay rates for all engineers. (Rather than using variables)
*/