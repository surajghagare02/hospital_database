--Beginner
--Find total number of patients.
select count(*)as total_patients
from patients;

--List all doctors and their departments.
select d.doctor_name,de.department_name
from doctors d
join department de 
    on d.doctor_id=de.department_id;

--Show all appointments with status = 'Completed'.
select * 
from appointments
where status='Completed';

--Find patients from Mumbai.
select *
from patients
where city='Mumbai';

--Count number of doctors in each department.
select d.department_id,d.department_name,count(dr.doctor_id)as count_of_dr
from doctors dr
join department d
    on d.department_id=dr.department_id
    group by d.department_id,d.department_name
    order by count_of_dr ;

--Find average age of patients.
select avg(age)as average_age
from patients;

--List all treatments with cost greater than 5000.
select *
from treatments
where cost>5000;

--Show all bills generated after a specific date.
select *
from bills 
where bill_date>date '2024-01-02';

--Count total number of appointments.
select count(*)as total_appo
from appointments;

--Find minimum and maximum treatment cost.
select max(cost)as maximum_cost, min(cost)as minimum_cost
from treatments;


