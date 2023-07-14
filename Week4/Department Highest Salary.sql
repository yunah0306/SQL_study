
# 기존 sol
SELECT d.name,
       e.name,
       e.salary
FROM Employee e
     INNER JOIN (
          SELECT departmentId,MAX(salary) highest_salary
          FROM Employee
          GROUP BY departmentId
     ) AS sub ON e.departmentId = sub.departmentId
              AND e.salary = sub.highest_salary
     INNER JOIN Department d
                ON e.departmentId = d.id   

# 사용자 함수 사용 ver
WITH ms AS (SELECT d.name AS Department,
                   e.salary as Salary,
                   e.name AS Employee,
                   MAX(salary) OVER (PARTITION BY departmentId) AS max_salary
            FROM Employee e
                 INNER JOIN Department d ON e.departmentId = d.id)

SELECT Department,
       Employee,
       Salary
FROM ms
WHERE Salary = max_salary
