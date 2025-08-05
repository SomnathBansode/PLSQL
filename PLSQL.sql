begin
   dbms_output.put_line('hello this my first program in plsql');
end;

declare
   num number := 100;
begin
   dbms_output.put_line('num value is : ' || num);
end;

declare
   num1 number := 100;
   num2 number := 200;
begin
   dbms_output.put_line('first number is '
                        || num1
                        || ' second number is '
                        || num2);
end;

declare
   num1 number := 10;
   num2 number := 12;
   num3 number;
begin
   num3 := num1 + num2;
   dbms_output.put_line('sum of '
                        || num1
                        || ' and sum of '
                        || num2
                        || ' is '
                        || num3);
end;

---- geting numbers from user and add it 

declare
   num1 number := &num1;
   num2 number := &num2;
   ans  number;
begin
   ans := num1 + num2;
   dbms_output.put_line('sum of '
                        || num1
                        || ' and '
                        || num2
                        || ' is '
                        || ans);
end;


--- get employee is from user and give output of first name last name salay form emp
select *
  from emp;

declare
   eid   number;
   fname varchar2(20);
   lname varchar2(20);
   sal   number;
begin
   select e.employee_id,
          e.first_name,
          e.last_name,
          e.salary
     into
      eid,
      fname,
      lname,
      sal
     from emp e
    where e.employee_id = &eid;

   dbms_output.put_line('user''s employee_id is '
                        || eid
                        || ' users full name is '
                        || fname
                        || ' '
                        || lname
                        || ' and salary is '
                        || sal);
end;
/

--- if else 
declare
   num number := &num;
begin
   if ( num > 10 ) then
      dbms_output.put_line(num || ' number is greter than 10 and its valid');
   else
      dbms_output.put_line(num || ' number is less than 10 and its invalid');
   end if;
end;

--- find smllest number between two 

declare
   num1 number := &num1;
   num2 number := &num2;
begin
   if ( num1 < num2 ) then
      dbms_output.put_line(num1
                           || ' is smaller than '
                           || num2);
   else
      dbms_output.put_line(num2
                           || ' is smaller than '
                           || num1);
   end if;
end;

--- EMPLOYEE IS PRESENT OR NOT

declare
   eid number := &eid;
   cnt number;
begin
   select count(*)
     into cnt
     from emp
    where employee_id = eid;
   if ( cnt > 0 ) then
      dbms_output.put_line('EMPLOYEE IS PRESENT');
   else
      dbms_output.put_line('EMPLOYEE IS NOT PRESENT');
   end if;
end;

declare
   eid number := &eid;
   cnt number;
begin
   select employee_id
     into cnt
     from emp
    where employee_id = eid;
   if ( cnt ) then
      dbms_output.put_line('EMPLOYEE IS PRESENT');
   else
      dbms_output.put_line('EMPLOYEE IS NOT PRESENT');
   end if;
end;

declare
   eid number := &eid;
   cnt number;
begin
   begin
      select employee_id
        into cnt
        from emp
       where employee_id = eid;
    -- If SELECT succeeds, employee exists
      dbms_output.put_line('EMPLOYEE IS PRESENT');
   exception
      when no_data_found then
         dbms_output.put_line('EMPLOYEE IS NOT PRESENT');
   end;
end;
/

     
--- find hiest number between three numbers
   SET SERVEROUTPUT ON
declare
   num1 number := &num1;
   num2 number := &num2;
   num3 number := &num3;
begin
   if (
      num1 > num2
      and num1 > num3
   ) then
      dbms_output.put_line(num1
                           || ' IS BIGGER THAN '
                           || num2
                           || ' AND '
                           || num3);
   elsif (
      num2 > num1
      and num2 > num3
   ) then
      dbms_output.put_line(num2
                           || ' IS BIGGER THAN '
                           || num1
                           || ' AND '
                           || num3);
   elsif (
      num3 > num1
      and num3 > num2
   ) then
      dbms_output.put_line(num3
                           || ' IS BIGGER THAN '
                           || num1
                           || ' AND '
                           || num2);
   else
      dbms_output.put_line('NUM1, NUM2, NUM3 ARE EQUAL');
   end if;
end;
/


declare
   num1 number := &num1;
   num2 number := &num2;
   oper varchar2(1) := '&OPER';
   ans  number;
begin
   if ( oper = '+' ) then
      ans := num1 + num2;
      dbms_output.put_line('SUM IS ' || ans);
   elsif ( oper = '-' ) then
      ans := num1 - num2;
      dbms_output.put_line('SUB IS ' || ans);
   elsif ( oper = '*' ) then
      ans := num1 * num2;
      dbms_output.put_line('MULT IS ' || ans);
   elsif ( oper = '/' ) then
      ans := num1 / num2;
      dbms_output.put_line('DIV IS ' || ans);
   else
      dbms_output.put_line('ENTER VALID DATA');
   end if;
end;