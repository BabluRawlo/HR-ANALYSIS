SELECT * FROM portfolio.hr;

---1)  Can you provide a breakdown of the gender distribution among employees?

select Gender ,count(gender) as No_of_Employee
from hr
group by gender;

--2) What is the salary range for employees with a specific job title?


select Job_Title,max(salary) as Max_salary,Min(salary) as Min_salary
from hr
group by Job_Title;


--3)  Which education qualification is most common among employees, and how many employees have it?

select Education_Qualification ,count(*) as Employee_count
from hr
group by Education_Qualification
ORDER BY Employee_count Desc;

--4) What are the different job titles within the organization, and how many employees are in each role?

Select Job_Title,Count(Job_Title) as No_of_Employee
from hr
group by Job_Title
order by No_of_Employee Desc;

--5)  How many employees have a leave balance greater than 20 days, and what is the average leave balance?

select Leave_Balance,count(name) as No_of_employee ,(select avg(Leave_Balance)from hr)as Avg_leave
from hr
where Leave_Balance > 20
group by Leave_Balance 
order by Leave_Balance desc;

--6) Who is the longest-serving employee, and how many years have they been with the company?

Select Emp_ID,Name,Date_of_Join,Year(now())-Year(Date_of_Join) as YearWithCompany
from hr
Order By YearWithCompany Desc
Limit 1;

--7) Percentage of Male and Female in each category of Job title?

SELECT Job_Title,
    SUM(CASE WHEN Gender = 'male' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS Male_Percentage,
    SUM(CASE WHEN Gender = 'female' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS Female_Percentage
FROM hr
GROUP BY Job_Title;

