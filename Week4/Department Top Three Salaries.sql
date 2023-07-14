문제링크: https://leetcode.com/problems/department-top-three-salaries/
  
# sol
WITH sub AS(SELECT d.name AS Department,
                   e.name AS Employee,
                   e.salary AS Salary,
                   DENSE_RANK() OVER (PARTITION BY d.name ORDER BY e.salary DESC) AS salary_rank
FROM Employee e
     INNER JOIN Department d ON e.departmentid = d.id)

SELECT Department,
       Employee,
       Salary
FROM sub
WHERE salary_rank <= 3
