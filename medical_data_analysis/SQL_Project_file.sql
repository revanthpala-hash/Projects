create database project_medical_data_history;

use project_medical_data_history;

select * from patients_table;

select first_name,last_name,gender from patients_table where gender= 'M';

select first_name,last_name from patients_table where allergies is Null;

select first_name from patients_table where first_name like 'C%';

select first_name,last_name from patients_table where weight between 100 and 120;

SET SQL_SAFE_UPDATES = 0;

update patients_table set allergies = 'NKA' where allergies IS NULL;

select concat(first_name,' ',last_name) as full_name from patients_table;

select p.first_name,p.last_name,e.province_name from patients_table as p inner join
 province_names_table as e on p.province_id = e.province_id;
 
 select * from patients_table where birth_date = 2010;
 
 select first_name,last_name,height from patients_table order by height desc limit 1;
 
  select first_name,last_name,height from patients_table where 
  height = (select max(height) from patients_table);
  
  select * from patients_table where patient_id=1 or patient_id = 45 or patient_id= 534
  or patient_id = 879 or patient_id = 1000;
  
  select count(distinct(patient_id)) as Total_admissions from admissions_table;
  
  select * from admissions_table where admission_date = discharge_date;
  
  select * from admissions_table where patient_id= 579;
  
  select count(patient_id) from admissions_table where patient_id = 579;
  
  select distinct(city) from patients_table where province_id = 'NS';
  
  select first_name,last_name,birth_date from patients_table 
  where height >= 160 and weight >= 70;  
  
  select distinct year(birth_date) as birth_year from patients_table order by birth_year asc;
  
  select first_name from patients_table group by first_name having count(first_name)=1;
  
  select patient_id,first_name from patients_table where first_name like 's%s' 
  and length(first_name) >= 6; 
  
  select p.patient_id,p.first_name,p.last_name from patients_table as p 
  inner join admissions_table as a on p.patient_id=a.patient_id where a.diagnosis = 'Dementia';
  
  select first_name,length(first_name) as patient_name from patients_table order by first_name;
  
  select sum(gender= 'M') as total_Male,sum(gender= 'F') as total_Female from patients_table;
  
  select patient_id,diagnosis from admissions_table group by patient_id,diagnosis 
  having count(patient_id and diagnosis)>1; 
  
  select city,count(patient_id) as total_patients from patients_table group by city
  order by total_patients DESC,city ASC;  

select first_name, last_name, 'Patient' as role
from patients_table
union all
select first_name, last_name, 'Doctor' as role
from doctors_table;

select allergies,count(allergies) as Total_popularity from patients_table where allergies 
is not null group by allergies order by Total_popularity desc;

select first_name,last_name,birth_date from patients_table where birth_date
 between '1970-01-01' and '1970-12-31' order by birth_date asc;
 
 select concat(upper(last_name),',',lower(first_name)) as full_name 
 from patients_table order by first_name desc;
 
 select province_id ,sum(height) as total_height from patients_table group by province_id 
 having sum(height) >= 7000;
 
 select max(weight) as largest_weight,min(weight) as smallest_weight from patients_table where
 last_name = 'Maroni';
 
 select day(admission_date) as day_of_month,count(admission_date) as total_admissions from
 admissions_table group by day(admission_date) order by total_admissions desc;
 
 select floor(weight/10)*10 as weight_group,count(weight)as total_patients from patients_table
 group by weight_group order by weight_group desc;
 
 select patient_id,weight,height, case when weight / ((height/100.0)*(height/100.0)) >= 30
 then 1 else 0 end as isobese from patients_table;
 
 alter table admissions_table rename column attending_doctor_id to doctor_id;
 
 select p.patient_id,p.first_name,p.last_name,d.specialty from patients_table as p join 
 admissions_table as a on p.patient_id = a.patient_id join doctors_table as d 
 on a.doctor_id = d.doctor_id where a.diagnosis = 'Epilepsy' and d.first_name = 'Lisa';
 
 
 



   


  
  
  
  
  
  
  
  
  
  
  







