file:/C:/Users/ACER/Desktop/test.sql	test	1793429369275	Script	100	0.0
select user from dual;	test	1792226068101	SQL	1	0.002
select sysdate from dual	test	1792226034697	SQL	1	0.005
select * from dual	test	1792226013259	SQL	1	0.001
select * from MV_emp	test	1792223725174	SQL	3	0.001
select * from Employee	test	1792223526553	SQL	2	0.001
select * from V_emp1	test	1792223246388	SQL	1	0.003
select * from V_emp;	test	1792223111604	SQL	4	0.002
select * from V_EMP_Dept;	test	1792223108120	SQL	2	0.001
select * from Employee;	test	1792223103653	SQL	1	0.002
select dept_id from dept
minus
select dept_id from employee;	test	1792222591440	SQL	2	0.004
select * From employee;	test	1792222334639	SQL	1	0.032
select dept_id from employee
minus
select dept_id from dept;	test	1791709816376	SQL	1	0.002
select dept_id from employee
intersect
select dept_id from dept;	test	1791709794739	SQL	1	0.002
select dept_id from employee
union all
select dept_id from dept;	test	1791709730406	SQL	1	0.002
select dept_id from employee
union
select dept_id from dept;	test	1791709629171	SQL	1	0.003
select d.dept_name, e.emp_name from employee e right join dept d on d.dept_id =e.dept_id
order by d.dept_id desc;	test	1791709287251	SQL	1	0.002
select d.dept_name, e.emp_name from dept d right join employee e on d.dept_id =e.dept_id
order by d.dept_id desc;	test	1791709211676	SQL	1	0.002
select e.emp_id, e.emp_name, e.salary,d.dept_name from employee e cross join dept d;	test	1791709112514	SQL	1	0.004
select d.dept_name, e.emp_name from dept d left join employee e on d.dept_id =e.dept_id
order by d.dept_id desc;	test	1791709016125	SQL	2	0.001
select d.dept_name, e.emp_name from employee e left join dept d on d.dept_id =e.dept_id
order by d.dept_id desc;	test	1791709008162	SQL	2	0.0
select * from dept;	test	1791709002380	SQL	2	0.001
commit;	test	1791708992934	SQL	3	0.005
insert into dept values(70,'network');	test	1791708981669	SQL	1	0.005
select d.dept_name, e.emp_name from dept d left join employee e on d.dept_id =e.dept_id
order by d.dept_id;	test	1791708798491	SQL	1	0.003
select d.dept_name, e.emp_name from dept d left join employee e on d.dept_id =e.dept_id;	test	1791708781115	SQL	2	0.001
select e.emp_id, e.emp_name, e.salary,d.dept_name from employee e inner join  dept d on e.dept_id =d.dept_id;	test	1791708448506	SQL	1	0.006
insert into employee values(101,'shalini',12500,10);
insert into employee values(102,'anil',12500,20);
insert into employee values(103,'rahul',12500,30);
insert into employee values(104,'kartik',12500,40);
insert into employee values(105,'riya',12500,50);
insert into employee values(106,'swetha',12500,60);	test	1791708083147	Script	1	0.024
create table employee( emp_id number(5),emp_name varchar2(20), salary number(8,2), dept_id number(5));	test	1791707938260	SQL	1	0.005
insert into dept values(10,'IT');
insert into dept values(20,'HR');
insert into dept values(30,'fiannce');
insert into dept values(40,'sales');	test	1791707489428	Script	1	0.496
create table dept (dept_id number(5),dept_name varchar2(20));	test	1791707355493	SQL	1	0.033