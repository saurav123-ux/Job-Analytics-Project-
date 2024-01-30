create database job_analytics_project ; 

use job_analytics_project ; 

--the 3 tables
select * from fjobs;
select * from fcompany;
select distinct * from fcompany1;
select distinct * from fdetails;

--joining the tables
select * from fjobs
inner join fcompany
on fcompany.company_id = fjobs.companyid
inner join fdetails
on fdetails.details_id = fjobs.details_id;

--output table and removing duplicate rows
select * from 
(select Job_id,Companyid,location,designation,fdetails.details_id,company_name,industry,number_of_employees,
involvement,level,total_Applicants,ROW_NUMBER() over(partition by job_id order by company_id) as rn from 
fjobs
inner join fcompany 
on fcompany.company_id = fjobs.companyid
inner join fdetails
on fdetails.details_id = fjobs.details_id) as x
where rn = 1;

select distinct * from fjobs
inner join fcompany1 
on fcompany1.company_id = fjobs.companyid
inner join fdetails
on fdetails.details_id = fjobs.details_id;

-- importing final project file
select * from fproject;

-- Comparison of number of jobs across different cities for different level 
select location, level, count(job_id) as Job_count
from fjobs
inner join fcompany1 
on fcompany1.company_id = fjobs.companyid
inner join fdetails
on fdetails.details_id = fjobs.details_id
group by location, level
order by job_count desc,location;

select location, level, count(job_id) as Job_count
from fproject
group by location, level
order by job_count desc;



--Comparison of number of jobs with respect to industries : 
select industry,count(job_id) as job_count from fproject 
group by industry 
order by job_count desc; 

-- Generate insights into number of opening with respect to the current employee count - 
-- Number of opening in a company with more than 1000 employees in comparison to number of openings in a company 
--with 100 employees.

select number_of_employees, count(job_id) as Count_of_Openings
from fproject
group by number_of_employees
order by count_of_openings desc;

-- Count the number of jobs across different industry across different locations

select location, industry, count(job_id) as Num_jobs
from fproject
group by  location, industry
order by num_jobs desc

select designation,count(job_id) as Num_jobs 
from fproject 
group by designation 
order by num_jobs desc 

