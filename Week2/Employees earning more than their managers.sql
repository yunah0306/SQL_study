문제링크: https://leetcode.com/problems/employees-earning-more-than-their-managers/
  
SELECT e.name AS Employee
FROM Employee e
     INNER JOIN Employee m ON e.managerId = m.id
WHERE e.salary > m.salary
