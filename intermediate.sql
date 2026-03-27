--Intermediate
--Show patient name with their appointment details.
select p.patient_name,a.*
from patients p
join appointments a
    on p.patient_id=a.patient_id;

--Find total revenue generated from treatments.
select sum(cost)as total_revenue
from treatments;

--Count number of appointments handled by each doctor.
select doctor_id,count(appointments_id)as total_appointment
from appointments
group by doctor_id;


--Find total billing amount per patient.
select patient_id,sum(total_amount)as total_bill
from bills
group by patient_id;

--Show department-wise number of doctors.
select department_id,count(doctor_id)as count_dr_numbers
from doctors
group by department_id;

--Find average treatment cost per department.
select d.department_id,avg(t.cost)as avg_cost_treatments
from department d
join doctors dr 
    on d.department_id=dr.department_id
join appointments a
    on dr.doctor_id=a.doctor_id
join treatments t
    on a.appointments_id=t.appointments_id
group by d.department_id;


--List patients and their payment methods.
select p.*,p1.payment_method
from patients p
join bills b
    on p.patient_id=b.patient_id
join payments p1
    on b.bill_id=p1.bill_id;
    
--Find top 3 most expensive treatments.
select *
from(
    select t.*,dense_rank() over(order by cost desc)as rnk
    from treatments t
    )
where rnk<=3;
--Count how many appointments are completed vs pending.
select status, count(*)as total_count
from appointments
group by status;

select 
    count(case when status='Completed' then 1 end)as completed_count,
    count(case when status='Pending' then 1 end)as pending_count
from appointments;

--Find doctors who handled more than 2 appointments.
select doctor_id,count(appointments_id)as count_of_appointments
from appointments
group by doctor_id
having count(appointments_id)>2;