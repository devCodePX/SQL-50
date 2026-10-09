/*
1378. Replace Employee ID With The Unique Identifier
# Write your MySQL query statement below
*/





SELECT unique_id,name
from Employees 
Left join EmployeeUNI on Employees.id = EmployeeUNI.id; 

/*
 This will not work because normal join is inner join which join only those row which match.
select 

    case
        when unique_id is null then null
        else unique_id
    end as unique_id,
    name

from Employees 
join EmployeeUNI on Employees.id = EmployeeUNI.id; 
*/

