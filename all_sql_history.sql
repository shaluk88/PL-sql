-- Oracle SQL Developer history export
-- Recovered statements/scripts: 31
-- Ordered oldest to newest. SQL text preserved from history XML.

-- ============================================================================
-- History item: 1/31
-- Date (Singapore): 2026-10-11T16:29:15.493+08:00
-- Connection: test
-- Type: SQL | Executed: 1 | Exec time: 0.033
-- Source: 2729478968011820906history.xml
-- ============================================================================
create table dept (dept_id number(5),dept_name varchar2(20));

-- ============================================================================
-- History item: 2/31
-- Date (Singapore): 2026-10-11T16:31:29.428+08:00
-- Connection: test
-- Type: Script | Executed: 1 | Exec time: 0.496
-- Source: 7387152776159058799history.xml
-- ============================================================================
insert into dept values(10,'IT');
insert into dept values(20,'HR');
insert into dept values(30,'fiannce');
insert into dept values(40,'sales');

-- ============================================================================
-- History item: 3/31
-- Date (Singapore): 2026-10-11T16:38:58.260+08:00
-- Connection: test
-- Type: SQL | Executed: 1 | Exec time: 0.005
-- Source: -5817513153992410306history.xml
-- ============================================================================
create table employee( emp_id number(5),emp_name varchar2(20), salary number(8,2), dept_id number(5));

-- ============================================================================
-- History item: 4/31
-- Date (Singapore): 2026-10-11T16:41:23.147+08:00
-- Connection: test
-- Type: Script | Executed: 1 | Exec time: 0.024
-- Source: -7289980024747668712history.xml
-- ============================================================================
insert into employee values(101,'shalini',12500,10);
insert into employee values(102,'anil',12500,20);
insert into employee values(103,'rahul',12500,30);
insert into employee values(104,'kartik',12500,40);
insert into employee values(105,'riya',12500,50);
insert into employee values(106,'swetha',12500,60);

-- ============================================================================
-- History item: 5/31
-- Date (Singapore): 2026-10-11T16:47:28.506+08:00
-- Connection: test
-- Type: SQL | Executed: 1 | Exec time: 0.006
-- Source: -9099868012878992940history.xml
-- ============================================================================
select e.emp_id, e.emp_name, e.salary,d.dept_name from employee e inner join  dept d on e.dept_id =d.dept_id;

-- ============================================================================
-- History item: 6/31
-- Date (Singapore): 2026-10-11T16:53:01.115+08:00
-- Connection: test
-- Type: SQL | Executed: 2 | Exec time: 0.001
-- Source: 3698756094544655363history.xml
-- ============================================================================
select d.dept_name, e.emp_name from dept d left join employee e on d.dept_id =e.dept_id;

-- ============================================================================
-- History item: 7/31
-- Date (Singapore): 2026-10-11T16:53:18.491+08:00
-- Connection: test
-- Type: SQL | Executed: 1 | Exec time: 0.003
-- Source: 8088547634821019534history.xml
-- ============================================================================
select d.dept_name, e.emp_name from dept d left join employee e on d.dept_id =e.dept_id
order by d.dept_id;

-- ============================================================================
-- History item: 8/31
-- Date (Singapore): 2026-10-11T16:56:21.669+08:00
-- Connection: test
-- Type: SQL | Executed: 1 | Exec time: 0.005
-- Source: -4591375747893013928history.xml
-- ============================================================================
insert into dept values(70,'network');

-- ============================================================================
-- History item: 9/31
-- Date (Singapore): 2026-10-11T16:56:32.934+08:00
-- Connection: test
-- Type: SQL | Executed: 3 | Exec time: 0.005
-- Source: 166314940080576588history.xml
-- ============================================================================
commit;

-- ============================================================================
-- History item: 10/31
-- Date (Singapore): 2026-10-11T16:56:42.380+08:00
-- Connection: test
-- Type: SQL | Executed: 2 | Exec time: 0.001
-- Source: 6207447121766695347history.xml
-- ============================================================================
select * from dept;

-- ============================================================================
-- History item: 11/31
-- Date (Singapore): 2026-10-11T16:56:48.162+08:00
-- Connection: test
-- Type: SQL | Executed: 2 | Exec time: 0.0
-- Source: 2591935627682298947history.xml
-- ============================================================================
select d.dept_name, e.emp_name from employee e left join dept d on d.dept_id =e.dept_id
order by d.dept_id desc;

-- ============================================================================
-- History item: 12/31
-- Date (Singapore): 2026-10-11T16:56:56.125+08:00
-- Connection: test
-- Type: SQL | Executed: 2 | Exec time: 0.001
-- Source: 2591631355724168857history.xml
-- ============================================================================
select d.dept_name, e.emp_name from dept d left join employee e on d.dept_id =e.dept_id
order by d.dept_id desc;

-- ============================================================================
-- History item: 13/31
-- Date (Singapore): 2026-10-11T16:58:32.514+08:00
-- Connection: test
-- Type: SQL | Executed: 1 | Exec time: 0.004
-- Source: -672110342272675269history.xml
-- ============================================================================
select e.emp_id, e.emp_name, e.salary,d.dept_name from employee e cross join dept d;

-- ============================================================================
-- History item: 14/31
-- Date (Singapore): 2026-10-11T17:00:11.676+08:00
-- Connection: test
-- Type: SQL | Executed: 1 | Exec time: 0.002
-- Source: 7852016542760360066history.xml
-- ============================================================================
select d.dept_name, e.emp_name from dept d right join employee e on d.dept_id =e.dept_id
order by d.dept_id desc;

-- ============================================================================
-- History item: 15/31
-- Date (Singapore): 2026-10-11T17:01:27.251+08:00
-- Connection: test
-- Type: SQL | Executed: 1 | Exec time: 0.002
-- Source: 1030530008206557735history.xml
-- ============================================================================
select d.dept_name, e.emp_name from employee e right join dept d on d.dept_id =e.dept_id
order by d.dept_id desc;

-- ============================================================================
-- History item: 16/31
-- Date (Singapore): 2026-10-11T17:07:09.171+08:00
-- Connection: test
-- Type: SQL | Executed: 1 | Exec time: 0.003
-- Source: 4754076779327195957history.xml
-- ============================================================================
select dept_id from employee
union
select dept_id from dept;

-- ============================================================================
-- History item: 17/31
-- Date (Singapore): 2026-10-11T17:08:50.406+08:00
-- Connection: test
-- Type: SQL | Executed: 1 | Exec time: 0.002
-- Source: -2375074001461740971history.xml
-- ============================================================================
select dept_id from employee
union all
select dept_id from dept;

-- ============================================================================
-- History item: 18/31
-- Date (Singapore): 2026-10-11T17:09:54.739+08:00
-- Connection: test
-- Type: SQL | Executed: 1 | Exec time: 0.002
-- Source: 9115705484920480184history.xml
-- ============================================================================
select dept_id from employee
intersect
select dept_id from dept;

-- ============================================================================
-- History item: 19/31
-- Date (Singapore): 2026-10-11T17:10:16.376+08:00
-- Connection: test
-- Type: SQL | Executed: 1 | Exec time: 0.002
-- Source: 7660449790613652767history.xml
-- ============================================================================
select dept_id from employee
minus
select dept_id from dept;

-- ============================================================================
-- History item: 20/31
-- Date (Singapore): 2026-10-17T15:32:14.639+08:00
-- Connection: test
-- Type: SQL | Executed: 1 | Exec time: 0.032
-- Source: -8670687551820488252history.xml
-- ============================================================================
select * From employee;

-- ============================================================================
-- History item: 21/31
-- Date (Singapore): 2026-10-17T15:36:31.440+08:00
-- Connection: test
-- Type: SQL | Executed: 2 | Exec time: 0.004
-- Source: 2470529172757048855history.xml
-- ============================================================================
select dept_id from dept
minus
select dept_id from employee;

-- ============================================================================
-- History item: 22/31
-- Date (Singapore): 2026-10-17T15:45:03.653+08:00
-- Connection: test
-- Type: SQL | Executed: 1 | Exec time: 0.002
-- Source: 7692176520423807759history.xml
-- ============================================================================
select * from Employee;

-- ============================================================================
-- History item: 23/31
-- Date (Singapore): 2026-10-17T15:45:08.120+08:00
-- Connection: test
-- Type: SQL | Executed: 2 | Exec time: 0.001
-- Source: -8049113555938309554history.xml
-- ============================================================================
select * from V_EMP_Dept;

-- ============================================================================
-- History item: 24/31
-- Date (Singapore): 2026-10-17T15:45:11.604+08:00
-- Connection: test
-- Type: SQL | Executed: 4 | Exec time: 0.002
-- Source: -8299291569504480737history.xml
-- ============================================================================
select * from V_emp;

-- ============================================================================
-- History item: 25/31
-- Date (Singapore): 2026-10-17T15:47:26.388+08:00
-- Connection: test
-- Type: SQL | Executed: 1 | Exec time: 0.003
-- Source: -138765551874915709history.xml
-- ============================================================================
select * from V_emp1

-- ============================================================================
-- History item: 26/31
-- Date (Singapore): 2026-10-17T15:52:06.553+08:00
-- Connection: test
-- Type: SQL | Executed: 2 | Exec time: 0.001
-- Source: -8560087354421380738history.xml
-- ============================================================================
select * from Employee

-- ============================================================================
-- History item: 27/31
-- Date (Singapore): 2026-10-17T15:55:25.174+08:00
-- Connection: test
-- Type: SQL | Executed: 3 | Exec time: 0.001
-- Source: 768032303055432343history.xml
-- ============================================================================
select * from MV_emp

-- ============================================================================
-- History item: 28/31
-- Date (Singapore): 2026-10-17T16:33:33.259+08:00
-- Connection: test
-- Type: SQL | Executed: 1 | Exec time: 0.001
-- Source: -6069712890337916037history.xml
-- ============================================================================
select * from dual

-- ============================================================================
-- History item: 29/31
-- Date (Singapore): 2026-10-17T16:33:54.697+08:00
-- Connection: test
-- Type: SQL | Executed: 1 | Exec time: 0.005
-- Source: -5142829276222788967history.xml
-- ============================================================================
select sysdate from dual

-- ============================================================================
-- History item: 30/31
-- Date (Singapore): 2026-10-17T16:34:28.101+08:00
-- Connection: test
-- Type: SQL | Executed: 1 | Exec time: 0.002
-- Source: -8276025378698465838history.xml
-- ============================================================================
select user from dual;

-- ============================================================================
-- History item: 31/31
-- Date (Singapore): 2026-10-31T14:49:29.275+08:00
-- Connection: test
-- Type: Script | Executed: 100 | Exec time: 0.0
-- Source: 6035207635699279967history.xml
-- ============================================================================
file:/C:/Users/ACER/Desktop/test.sql

