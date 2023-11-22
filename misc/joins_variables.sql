select *
from sampdb.emp;

select *
from sampdb.dept;

select e.emp_name, d.dept_name, d.dept_no, d.dept_name
from sampdb.emp e
	right join sampdb.dept d on (e.dept_no = d.dept_no)

order by e.emp_name;
    
select last_name, first_name from sampdb.president
union all
select last_name, first_name from sampdb.member
order by 1 desc, 2;


select @wilson_death := death 
from sampdb.president
where first_name = 'Woodrow';


select concat(first_name, ' ',  last_name) as president, death
from sampdb.president
where death > @wilson_death;
