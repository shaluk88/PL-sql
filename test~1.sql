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




