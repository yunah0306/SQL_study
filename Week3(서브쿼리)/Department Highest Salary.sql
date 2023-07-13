# sol_1
SELECT d.name AS Department,
       e.name AS Employee,
       e.salary AS Salary
FROM Employee e
     INNER JOIN Department d ON e.departmentId = d.id
WHERE (salary, departmentId) IN(
     SELECT MAX(salary), departmentId
     FROM Employee
     GROUP BY departmentId)

# sol_2
SELECT d.name AS Department,
       e.name AS Employee,
       e.salary AS Salary
FROM Employee e
     INNER JOIN(SELECT departmentId, Max(salary) as max_salary
                FROM Employee
                GROUP BY departmentId) AS sub ON e.departmentId = sub.departmentId AND e.salary = sub.max_salary
     INNER JOIN Department d ON e.departmentid = d.id
