create table department(
        department_id number primary key,
        department_name varchar2(100));
        
create table doctors(
        doctor_id number primary key,
        doctor_name varchar2(100),
        department_id number,
        experience number,
        constraint fk_dept_dr 
        foreign key (department_id) 
        references department(department_id));
        
create table patients(
        patient_id number primary key,
        patient_name varchar2(500),
        age number,
        gender varchar2(50),
        city varchar2(500));
        
create table appointments(
        appointments_id number primary key,
        patient_id number,
        doctor_id number,
        appointment_date date,
        status varchar2(500),
        constraint fk_appoi_dr foreign key(doctor_id) references doctors(doctor_id),
        constraint fk_appoi_pa foreign key(patient_id) references patients(patient_id));
        
create table treatments(
        treatment_id number primary key,
        appointments_id number,
        treatment_name varchar2(500),
        cost number,
        constraint fk_tre_appo foreign key(appointments_id) references appointments(appointments_id)
        );
        
create table bills(
        bill_id number primary key,
        patient_id number,
        total_amount number,
        bill_date date,
        constraint fk_bill_pat foreign key(patient_id) references patients(patient_id)
        );
        

create table payments(
        payment_id number primary key,
        bill_id number,
        payment_date date,
        payment_method varchar2(20),
        constraint fk_pay_bill foreign key(bill_id) references bills(bill_id)
        );
        
