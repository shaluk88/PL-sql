Select * from dept;
Select * from employee;
--left outer joint--
select e.EMP_name, e.salary, d.dept_name
from employee e, dept d 
where e.dept_id=d.dept_id(+);

---right outer joint---
select e.EMP_name, e.salary, d.dept_name
from employee e, dept d 
where e.dept_id (+)=d.dept_id;

----- right outer join--
select e.EMP_name, e.salary, d.dept_name
from employee e right outer join dept d on e.dept_id = d.dept_id;

-- left outer join---
select e.EMP_name, e.salary, d.dept_name
from employee e left outer join dept d on e.dept_id = d.dept_id;        

--------------

--bind variables--
set serveroutput on
declare 
V_salary number:= 5000;
begin
DBMS_output.PUt_line(V_Salary);
end;
----legacy--
variable V_salary number;
exec :V_salary:=5000;
print V_salary; 

--exception handling--
declare
V_name varchar2(30);
V_salary number;
begin
V_name:='shalini';
V_salary:=5000;
dbms_output.Put_line(V_name);
dbms_output.put_line(V_salary);
EXCEPTION
when others THEN 
dbms_output.put_line(sqlerrm);
end;

--exception handling 1--
declare
V_num1 number:=100;
V_num2 number:=1;
V_result number;
begin
V_result:=V_num1/V_num2;
dbms_output.put_line('Result:'||V_result);
exception
when others then
dbms_output.put_line('error occur'||sqlerrm);
end;

----exception handling 2--
declare
V_num1 number:=100;
V_num2 number:=0;
V_result number;
begin
V_result:=V_num1/V_num2;
dbms_output.put_line('Result:'||V_result);
exception
when others then
dbms_output.put_line('error occur'||sqlerrm);
dbms_output.put_line('error code :' || sqlcode);
end;

--exeception - no data found --
declare
V_emp_name employee.emp_name%type;
Begin
select emp_name into V_emp_name from employee 
where emp_id = 107;
dbms_output.Put_line(V_emp_name);
exception
--when no_data_found then
--dbms_output.Put_line('emp not found '||sqlcode);
when others then
dbms_output.Put_line(sqlerrm);
end;

--exception handling-- assignment --divisor 
--declare , exception - optional 

select * from employee;
insert into employee values (107,'rahul',20000,10);
commit;

---
declare
V_emp_name employee.emp_name%type;
Begin
select emp_name into V_emp_name from employee 
where dept_id=10;
dbms_output.Put_line(V_emp_name);
exception
when too_many_rows then
dbms_output.Put_line('multiple record found '||sqlcode);
when others then
dbms_output.Put_line(sqlerrm);
end;

---zero_divide--
declare
V_num1 number:=100;
V_num2 number:=0;
V_result number;
begin
V_result:=V_num1/V_num2;
dbms_output.put_line('Result:'||V_result);
exception
when Zero_divide then
dbms_output.put_line('divisor is equal to zero ' ||sqlcode);
when others then
dbms_output.put_line('error occur'||sqlerrm);
dbms_output.put_line('error code :' || sqlcode);
end;

select * from tab;





--implicity cursor, expilicty cursor--


select * from employee;

SET SERVEROUTPUT ON;

Declare
V_salary number;
Begin
select salary into V_salary from employee where emp_ID =102;
dbms_output.put_line(V_salary);
END;

--Explicity Cursor--
declare
cursor emp_cursor is
select emp_id,emp_name,salary from employee;
V_emp_id employee.emp_id%type;
V_emp_name employee.emp_name%type;
V_salary employee.salary%type;
begin
open emp_cursor;
loop
fetch emp_cursor
into
V_emp_id, V_emp_name, V_salary;
exit when emp_cursor%notfound;
Dbms_output.put_line(V_emp_id ||' '|| V_emp_name || ' '|| V_salary);
end loop;
close emp_cursor;
end;

select * from Dept;

declare
Cursor dep_cursor is
select dept_id,Dept_name from dept;
V_dept_id dept.dept_id%type;
V_dept_name dept.Dept_name%type;
begin
open Dep_cursor;
loop
fetch dep_cursor
into
V_dept_id,V_Dept_name;
exit when dep_cursor%notfound;
DbMS_output.put_line(V_dept_id ||' '|| V_Dept_name);
end loop;
close dep_cursor;
end;

--implicity cursor --
begin
update employee set salary = salary +1000 where dept_id=10;
dbms_output.put_line('row updated by shalini ' || sql%rowcount);
end;

declare
cursor emp1_cursor (V_dept_id number) is
select emp_id,emp_name,Salary from employee
where dept_id =V_dept_id;
begin
for
emp_rec in emp1_cursor(20)
loop
dbms_output.put_line(emp_rec.emp_name || ' ' || emp_rec.salary);
end loop;
end;

declare
cursor emp_cursor is
select emp_id,salary from employee;
type emp_type is table of
emp_cursor%rowtype;
V_emp_data emp_type;
begin
open emp_cursor;
loop
fetch emp_cursor
bulk collect into V_emp_data
limit 100;
exit when V_emp_data.count=0;
forall i in 1.. V_emp_data.count
update employee set salary = 
V_emp_data (i).salary+500
where emp_id =V_emp_data(i).emp_id;
end loop;
close emp_cursor;
end;







select * from Employee;


-- Create a table - 2 to 3 Columns  , primary _key - Emp_id , unqiue Key - Email _id-- Assignement--, null - ''


CREATE TABLE Employee1 (
    Emp_id INT PRIMARY KEY,
    Email_id VARCHAR(100) UNIQUE);
    
INSERT INTO Employee1 (Emp_id, Email_id) VALUES(101, 'john@gmail.com');
INSERT INTO Employee1 (Emp_id, Email_id) VALUES(102, 'smith@gmail.com');
INSERT INTO Employee1 (Emp_id, Email_id) VALUES(103, 'alex@gmail.com');

select * from employee;


set serveroutput on

begin
insert into employee1 values(104, 'john1@gmail.com');
dbms_output.put_line('record inserted successfully');
exception 
when dup_val_on_index then
dbms_output.put_line('error duplicate found' );
when others then 
dbms_output.put_line('errors'||sqlerrm);
end;


--handling null values --
declare
e_null_value exception;
pragma exception_init(e_null_value, -1400);
begin
insert into employee1(emp_id, Email_id) values (null,'dhana@gmail.com');
dbms_output.put_line('record inserted successfully');
exception
when dup_val_on_index then
dbms_output.put_line('error duplicate found' );
when others then 
dbms_output.put_line('errors '||sqlerrm);
end;

--ref cursor--
declare
type emp_ref_cursor is ref cursor;
V_cursor emp_ref_cursor;
V_emp_id employee.emp_id%type;
V_name employee.emp_name%type;
V_salary employee.salary%type;
begin
open V_cursor 
for
select emp_id, emp_name, salary from employee;
loop
fetch V_cursor into v_emp_id, V_name, V_salary;
exit when V_cursor%notfound;
dbms_output.put_line(V_emp_id||'  '||V_name || '  '|| V_salary);
end loop;
close V_cursor;
end;

-- Assignment -- Declare -- V_ , add Cursor,, select * data insert --
declare
cursor emp_cursor is
select emp_id,salary from employee;
type emp_type is table of
emp_cursor%rowtype;
V_emp_data emp_type;
begin
open emp_cursor;
loop
fetch emp_cursor
bulk collect into V_emp_data
limit 100;
exit when V_emp_data.count=0;
forall i in 1.. V_emp_data.count
update employee set salary = 
V_emp_data (i).salary*2.75
where emp_id =V_emp_data(i).emp_id;
end loop;
close emp_cursor;
end;


--cursor with limit optimisation--
declare
cursor C_emp is 
select emp_id, emp_name ,salary, dept_id from employee;
type emp_type is table of C_emp%rowtype;
V_emp_id emp_type;
begin
open C_emp;
loop
fetch C_emp bulk collect into V_emp_id limit 100;
exit when V_emp_id.count=0;
for i in 1.. V_emp_id.count
loop
dbms_output.put_line(V_emp_id(i).emp_id||'  '||V_emp_id(i).emp_name||'  '||V_emp_id(i).salary||'  '||V_emp_id(i).dept_id);
end loop; 
end loop;
close C_emp;
end;


Declare
cursor C_emp is 
select emp_id, emp_name , salary from employee;
begin
for emp in C_emp
loop
begin
if emp.salary is null then
raise_application_error(-1500, ' salary is null' || emp.emp_id);
end if;
dbms_output.put_line(emp.emp_name ||'  '|| emp.salary);
exception
when others then 
dbms_output.put_line('Error ' || sqlerrm);
end;
end loop;
end;

insert into employee values(108,'Suddu', null, 20);

commit;




