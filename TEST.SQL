--Week Two


--Retrieve the main dataset

SELECT * from `niyo-bootcamp-394518.NIYO.HR_DATASET`;


--Retrieve employees that are NOT white and are Asian

SELECT * from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where not RaceDesc = 'White' AND RaceDesc = 'Asian';  



--Retrieve employees that have a salary of 1000 and are not divorced

select * from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where salary > 100000 AND MaritalDesc !=  'Divorced';


--Retrieve employees between A and M from the whole dataset

select * from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where Employee_Name between 'An' AND 'Mb';

--Retrieve from the relevant column

Select Employee_Name from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where Employee_Name between 'A' AND 'M';

--Retrieve employees with salary between 70000 and 100000 and NOT white

SELECT * from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where Salary BETWEEN 70000 AND 100000 AND NOT RaceDesc = 'White';


--Find the unique termination reasons
Select DISTINCT TermReason FROM `niyo-bootcamp-394518.NIYO.HR_DATASET`;

--Retrieve employees who terminated due to happiness
select * from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where TermReason LIKE '%happy%';

--Retrieve employees whose name contain John
SELECT * from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where Employee_Name LIKE'%John%';



--Retrieve any employees who consider themselves engineers
select * from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where Position LIKE '%Engineer%';

--Retrieve employees who are senior (senior or sr.)
select * from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where Position LIKE '%Sr.%' OR Position LIKE '%Senior%';


--Retrieve employees who are senior and earn over 100000
select * from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where Salary > 100000 AND (Position LIKE '%Senior%' OR Position LIKE '%Sr.%');


--Retrieve employees  in TX, CT, FL, NC
SELECT distinct state from `niyo-bootcamp-394518.NIYO.HR_DATASET`;

select Employee_Name, State from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where state IN ('CT', 'TX', 'FL', 'NC'); 

--Retrieve employees in department Admin Offices, executive office and sales
select Employee_Name, department from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where Department IN ('Admin Offices', 'Executive Office', 'Sales');


--Retrieve employees in department Admin Offices, executive office and sales AND earning over 50000 
select Employee_Name, department, Salary from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where department IN ('Admin Offices', 'Excutive Office', 'Sales') AND Salary > 50000; 

-- Retrieve employees in department software engineering and IT and Diversity Hire
SELECT Employee_Name, Department, FromDiversityJobFairID from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where Department IN ('Software engineering', 'IT') AND FromDiversityJobFairID = 1;


--IS NULL & IS NOT NULL- FINDING MISSING VALUES

-- find employees who have not terminated 
SELECT * FROM `niyo-bootcamp-394518.NIYO.HR_DATASET`
where DateofTermination is null;


--find employees who have terminated
select * from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where DateofTermination is not null; 


--find employees who terminated and work in production
SELECT * FROM `niyo-bootcamp-394518.NIYO.HR_DATASET`
where DateofTermination is not null and Department = 'Production';


--find employees who terminated and are female
SELECT * from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where DateofTermination is not null and Sex = 'F';


--find employees who terminated and wanted more money
select * from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where DateofTermination is not null and TermReason like '%more money%';


--Order Salary by largest to smallest
--Desc BIGGEST TO SMALLEST, ASC SMALLEST TO BIGGEST
select Employee_Name, Salary
from `niyo-bootcamp-394518.NIYO.HR_DATASET`
order by Salary DESC;


--Ascending by default it will do ascending
SELECT Employee_Name, Salary, Position
FROM `niyo-bootcamp-394518.NIYO.HR_DATASET`
ORDER BY Salary ASC;

--order date of hire by earliest to latest
select Employee_Name, DateofHire
from `niyo-bootcamp-394518.NIYO.HR_DATASET`
order by DateofHire;


--Sort by Employee name
select Employee_Name
from `niyo-bootcamp-394518.NIYO.HR_DATASET`
order by Employee_Name DESC;


--How many employees do we have?
select COUNT(EmpID) AS NumberofEmployees from `niyo-bootcamp-394518.NIYO.HR_DATASET`;
 
select COUNT(*) AS NumberofEmployees from `niyo-bootcamp-394518.NIYO.HR_DATASET`;


-- How many departments do we have
select COUNT (DISTINCT Department) AS NoofDepartments from `niyo-bootcamp-394518.NIYO.HR_DATASET`;



--Arithmetic Operators Calculations 

--Add a column to calculate employees contribution assuming its 4%
select Employee_name, Salary, Salary * 0.04 AS  EmployeePensionContribution
from `niyo-bootcamp-394518.NIYO.HR_DATASET`;

--if the company is also contributing 6% pension, how much is the company paying per employee per year ( salary + pension contribution) 
select Employee_name, Salary, (Salary * 0.06)  AS CompanyPensionContribution, (Salary * 0.06) AS TotalPackage
from `niyo-bootcamp-394518.NIYO.HR_DATASET`;


--if the company is successful, add on a 10% increase per employee to their salary
select Employee_name, Salary, (Salary * 0.1) AS CompanySalaryIncrease, (Salary * 0.1) + Salary AS NewSalary
from `niyo-bootcamp-394518.NIYO.HR_DATASET`;


-- If the company is successful, add on a 10% increase per employee to their salary and decrease their salary by 5% per employee
SELECT Employee_Name, Salary, Salary * 0.1 AS CompanySalaryIncrease, (Salary * 0.1) + Salary AS BestCaseScenario, Salary * 0.05 AS CompanySalaryDecrease, Salary - (Salary * 0.05) AS WorstCaseScenario
FROM `niyo-bootcamp-394518.NIYO.HR_DATASET`

--what is the average salary
select AVG(Salary) as AvgSalary from `niyo-bootcamp-394518.NIYO.HR_DATASET`;


--we can round our data
--Round (Value,number of decimal places)

select ROUND(AVG(Salary), 2) AS AvgSalary from `niyo-bootcamp-394518.NIYO.HR_DATASET`;

--what is the total salary
select SUM(Salary) as TotalSalary from `niyo-bootcamp-394518.NIYO.HR_DATASET`;

--what is the minimum salary
select MIN(Salary) AS MinimumSalary from `niyo-bootcamp-394518.NIYO.HR_DATASET`;

--what is the maximum salary
select MAX(Salary) AS MaximumSalary from `niyo-bootcamp-394518.NIYO.HR_DATASET`;


--USING GROUP BY

--find the average salary per department
select Department, AVG(Salary) AS AvgSalaryPerDepartment
from `niyo-bootcamp-394518.NIYO.HR_DATASET`
GROUP BY Department;


select Department, AVG(Salary) AS AvgSalaryPerDepartment
from `niyo-bootcamp-394518.NIYO.HR_DATASET`
GROUP BY Department
ORDER BY 2 Desc;


--how many employees per RaceDesc
select RaceDesc, COUNT(EmpID) AS NumberofEmployeeperRace
from `niyo-bootcamp-394518.NIYO.HR_DATASET`
GROUP BY RaceDesc



--find the min, max, count, and total per sex
select sex, AVG(Salary) AS AvgSalary, MIN(Salary) AS MinSalary, MAX(Salary) AS MaxSalary,
SUM(Salary) AS TotalSalary, COUNT(EmpID) AS TotalNumberofEmployees
from `niyo-bootcamp-394518.NIYO.HR_DATASET`
GROUP BY Sex;

--find the average, min, max, count and toal salary per sex and per race
select sex, RaceDesc, AVG(Salary) AS AvgSalary, MIN(Salary) AS MinSalary, MAX(Salary) AS MaxSalary,
SUM(Salary) AS TotalSalary, COUNT(EmpID) AS TotalNumberofEmployees
from `niyo-bootcamp-394518.NIYO.HR_DATASET`
GROUP BY Sex, RaceDesc
order BY Sex;


--find the average, min, max, count and toal salary per sex and per race
select sex, RaceDesc, Department AVG(Salary) AS AvgSalary, MIN(Salary) AS MinSalary, MAX(Salary) AS MaxSalary,
SUM(Salary) AS TotalSalary, COUNT(EmpID) AS TotalNumberofEmployees
from `niyo-bootcamp-394518.NIYO.HR_DATASET`
GROUP BY Sex, RaceDesc, Department
order BY Sex, RaceDesc;


--find the average salary per sex, race for divorced employees
select Sex,RaceDesc, AVG(Salary) AS AvgSalary, COUNT(EmpID) AS NumberofEmployees
from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where MaritalDesc = 'Divorced'
GROUP BY Sex, RaceDesc;


--find the average salary per sex for divorced and separated employees
select Sex, MaritalDesc, AVG(Salary) AS AvgSalary, COUNT(EmpID) AS NumberofEmployees
from `niyo-bootcamp-394518.NIYO.HR_DATASET`
where MaritalDesc IN ('Divorced','Separated')  
GROUP BY Sex, MaritalDesc
order by Sex;
