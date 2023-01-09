SELECT *
FROM PortofolioProject..ds_salaries

SELECT work_year, job_title, avg(salary_in_usd) salary 
FROM PortofolioProject..ds_salaries
GROUP BY work_year, job_title
ORDER BY salary DESC

SELECT job_title, experience, avg(salary_in_usd) salary
FROM PortofolioProject..ds_salaries
WHERE experience = 'Entry Level'
GROUP BY job_title, experience
ORDER BY salary DESC

SELECT job_title, experience, AVG(salary_in_usd) salary
FROM PortofolioProject..ds_salaries
WHERE experience = 'Mid Level'
GROUP BY job_title, experience
ORDER BY salary DESC

SELECT job_title, experience, AVG(salary_in_usd) salary
FROM PortofolioProject..ds_salaries
WHERE experience = 'Senior Level'
GROUP BY job_title, experience
ORDER BY salary DESC

SELECT job_title, experience, AVG(salary_in_usd) salary
FROM PortofolioProject..ds_salaries
WHERE experience = 'Executive Level'
GROUP BY job_title, experience
ORDER BY salary DESC

SELECT job_title, employment_type, company_size, AVG(salary_in_usd) salary
FROM PortofolioProject..ds_salaries
WHERE job_title LIKE '%Analyst'
GROUP BY job_title, employment_type, company_size
ORDER BY salary DESC

SELECT job_title, employment_type, company_size, AVG(salary_in_usd) salary
FROM PortofolioProject..ds_salaries
WHERE job_title LIKE '%Scientist'
GROUP BY job_title, employment_type, company_size
ORDER BY salary DESC

SELECT job_title, company_location, AVG(salary_in_usd) salary
FROM PortofolioProject..ds_salaries
WHERE job_title = 'Data Analyst'
GROUP BY job_title, company_location
ORDER BY salary DESC

SELECT job_title, company_location, AVG(salary_in_usd) salary
FROM PortofolioProject..ds_salaries
WHERE job_title = 'Data Scientist'
GROUP BY job_title, company_location
ORDER BY salary DESC

SELECT job_title, remote, COUNT(remote) total
FROM PortofolioProject..ds_salaries
WHERE job_title IN ('Data Analyst', 'Data Scientist')
GROUP BY job_title, remote
ORDER BY remote, total DESC

SELECT company_size, remote, COUNT(remote) total
FROM PortofolioProject..ds_salaries
---WHERE job_title IN ('Data Analyst', 'Data Scientist')
GROUP BY company_size, remote
ORDER BY remote, total DESC

SELECT experience, company_size, COUNT(company_size) total
FROM PortofolioProject..ds_salaries
---WHERE job_title IN ('Data Analyst', 'Data Scientist')
GROUP BY experience, company_size
ORDER BY experience, total DESC

SELECT company_location, company_size, COUNT(company_size) total
FROM PortofolioProject..ds_salaries
GROUP BY company_location, company_size
ORDER BY company_size, total DESC

SELECT experience, employee_residence, COUNT(employee_residence) total
FROM PortofolioProject..ds_salaries
GROUP BY experience, employee_residence
ORDER BY experience, total DESC

SELECT experience, remote, COUNT(remote) total
FROM PortofolioProject..ds_salaries
GROUP BY experience, remote
ORDER BY experience, remote, total DESC

SELECT work_year, experience, COUNT(experience) total
FROM PortofolioProject..ds_salaries
GROUP BY work_year, experience
ORDER BY work_year, experience, total DESC

SELECT company_location, job_title, COUNT(job_title) total
FROM PortofolioProject..ds_salaries
GROUP BY company_location, job_title
ORDER BY company_location, total DESC

SELECT company_size, job_title, COUNT(company_size) total
FROM PortofolioProject..ds_salaries
GROUP BY company_size, job_title
ORDER BY company_size, total DESC