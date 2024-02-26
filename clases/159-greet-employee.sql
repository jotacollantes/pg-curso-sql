
select greet_employee('Fernando');

select first_name, greet_employee(first_name) from employees;



CREATE OR REPLACE FUNCTION greet_employee (employee_name VARCHAR)
RETURNS VARCHAR
as $$
-- DECLARE
BEGIN
--* concatenamos employee_name
	RETURN 'Hola ' || employee_name;

END;

$$
LANGUAGE plpgsql;