문제링크: https://leetcode.com/problems/nth-highest-salary/
  
# 기본 사용자 정의 함수 사용
CREATE FUNCTION getNthHighestSalary(N INT)
RETURNS INT
BEGIN 
   RETURN(SELECT CASE WHEN COUNT(sub.salary)< N THEN NULL ELSE MIN(sub.salary)
                   END
            FROM(SELECT DISTINCT salary
                 FROM Employee
                 ORDER BY salary DESC
                 LIMIT N) AS sub);

SELECT getNthHighestSalary(3)
