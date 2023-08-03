-- Lesson one & two

--retrieve all data from table

 

SELECT * FROM `niyo-bootcamp-394518.NIYO.HR_DATASET`;

--Retrieve employee id, employee name, position, deapartment and salary

select EmpID, Employee_name, position, department, salary
from `niyo-bootcamp-394518.NIYO.HR_DATASET`;

--Retrieve employee id, employee name, DOB

select empID, Employee_name, DOB
from `niyo-bootcamp-394518.NIYO.HR_DATASET`;

--ALIAS IS NOT A PERMANENT CHANGE

--Retrieve employee id, position and rename maritaldesc
select EmpID, position, MaritalDesc As Maritalstatus
from `niyo-bootcamp-394518.NIYO.HR_DATASET`;

--Retrieve distinct state
select distinct state 
from `niyo-bootcamp-394518.NIYO.HR_DATASET`;

--Retrieve position
select distinct position
from `niyo-bootcamp-394518.NIYO.HR_DATASET`;

--Retrieve employees who have a salary greater than 100,000
select * from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where salary > 100000;

--Retrieve emaployees who have a salary less tha 50,000
select * from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where salary < 50000;

--Retrieve employees who who work as Software engineer
select * from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where position = 'Software Engineer';

--Retrieve all  female employees
select * from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where sex = 'F';

--Retrieve all black or african employees
select * from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where RaceDesc = 'Black or African American';

--Retrieve all that are NOT us citizens
select * from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where CitizenDesc != 'US Citizen';

--Retrieve employee from diversity hire and are black or african employees
select * from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where RaceDesc = 'Black or African American' and FromDiversityJobFairID = 1;

--Retrieve employees that earn 100,000 and are NOT white
select * from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where salary > 100000 and RaceDesc != 'white';

--Retrieve employees that are married and earning above 60,000 and female
select * from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where salary > 60000 and MaritalDesc = 'Married' and sex = 'F';

--Retrieve employees that are currently active and work in production
select * from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where EmploymentStatus = 'Active' and Department = 'Production';

--Retrieve employees who work as a data analyst or are female
select * from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where Position = 'Data Analyst' and Sex = 'F';

--Retrieve employee from diversity hire or are black or african employees
select * from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where RaceDesc = 'Black or African American' or FromDiversityJobFairID = 1;


--Retrieve employees who work as a data analyst or are female
select * from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where Position = 'Data Analyst' or Sex = 'F';


--Retrieve employees that are currently active or work in production
select * from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where EmploymentStatus = 'Active' or Department = 'Production';

To combine 'AND' 'OR' brackets are necessary

--Retrieve employees that are (married OR female) and earning above 60000
select * from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where (MaritalDesc = 'Married' OR Sex = 'F') AND Salary > 60000;


