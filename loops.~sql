--- loops 
--- simple loop 
--- while loop
--- for loop

--- simple loop

DECLARE
   -- Variable declarations
   i NUMBER := 1;
BEGIN
   LOOP
      -- Statements inside the loop
      DBMS_OUTPUT.PUT_LINE('Value of i: ' || i);
      i := i + 1;

      -- Exit condition
      EXIT WHEN i > 10;
   END LOOP;
END;

declare 
   n number :=1;
   n1 number :=&n1;
 begin
   loop
     dbms_output.put_line(n);
     n:=n+1;
   exit when n>n1;
   end loop;
 end;
 
 --- find odd numbers beween given number
declare 
n_start number :=1;
n_end number:=&n_end;
begin
  loop
    if mod(n_start,2)!=0 then
    dbms_output.put_line(n_start);
    end if;
        n_start:=n_start+1;
  exit when n_start>n_end;
  end loop;
end;

--- find even numbers between given number

declare
num_start number :=1;
num_end number :=&num_end;
begin
  loop
    if mod(num_start,2)=0 then
      dbms_output.put_line(num_start);
      end if;
      num_start:=num_start+1;
  exit when num_start>num_end;
  
  end loop;
end;
--- 3,6,9,12,...,99
declare
num_start number :=1;
num_end number :=100;
begin
 loop
   if mod(num_start,3)=0 then
     dbms_output.put_line(num_start);
     end if;
     num_start:=num_start+1;
 exit when num_start>num_end;
 end loop;  
end;

---- while loop -- 1 to 10 number print
DECLARE
  -- variable declarations
BEGIN
  WHILE <condition> LOOP
    -- statements to execute
  END LOOP;
END;



declare
i number :=1;
n number :=&n;
begin
 while(i<=n) loop
 dbms_output.put_line(i);
 i:=i+1;
end loop;           
end;


--- for loop
DECLARE
  -- variable declarations (if needed)
BEGIN
  FOR counter_variable IN [REVERSE] lower_bound .. upper_bound LOOP
    -- statements to execute
  END LOOP;
END;

declare
   num number:=100;
begin
  for i in 1..num loop
    dbms_output.put_line(i);
  end loop;
  end;

DECLARE
  n NUMBER := 100;
BEGIN
  FOR i IN REVERSE 1 .. n LOOP
    DBMS_OUTPUT.PUT_LINE(i);
  END LOOP;
END;

---- for in table

declare
 begin 
   for i in (select * from emp)loop
     dbms_output.put_line(i.employee_id||' '|| i.first_name||' '||i.last_name);
   end loop;
end;


declare
 begin
   for i in (select * from emp) loop
     dbms_output.put_line(i.employee_id||' '||i.first_name);
   end loop;
   end;























