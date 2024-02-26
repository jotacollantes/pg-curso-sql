-- percentage: 5
create or REPLACE PROCEDURE controlled_raise ( percentage NUMERIC ) AS
$$
DECLARE
	real_percentage NUMERIC(8,2);
	total_employees int;

BEGIN
	real_percentage = percentage / 100; --5% = 0.05;
	
	-- Mantener el historico
	--* especificamos los campos de la tabla raise_history
	insert into raise_history( date, employee_id, base_salary, amount, percentage )
	select 
		CURRENT_DATE as "date",
		employee_id,
		salary,
		max_raise( employee_id ) * real_percentage as amount,
		percentage
	from employees;

	-- Impactar la tabla de empleados
	update employees
	    -- * (max_raise( employee_id ) * real_percentage) es el valor a incrementar, hay que sumar el salary
		set salary = (max_raise( employee_id ) * real_percentage) + salary;

	COMMIT;
    --* EL resultado del count(*) lo almacenamos en la variable total_employees con el into 
	select count(*) into total_employees from employees;

	raise notice 'Afectados % empleados', total_employees;

END;
$$ LANGUAGE plpgsql;



CALL controlled_raise(1);

select first_name,salary,job_id,max_raise( 100 ) from employees where employee_id=100;
select * from jobs where job_id=4


select * from employees;
select * from raise_history;

select 24000.00 * 0.01, max_raise(100);




select 
	CURRENT_DATE as "date",
	employee_id,
	salary,
	max_raise( employee_id ) * 0.05 as amount,
	5 as percentage
from employees;

