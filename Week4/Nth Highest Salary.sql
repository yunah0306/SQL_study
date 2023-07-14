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

# LIMIT 심화 사용
# 파라미터를 LIMIT 안에서 N-1로 직접적인 조작은 불가
# 따라서 DECLARE,SET을 이용해야 함
CREATE FUNCTION getNthHighestSalary(N INT)
RETURNS INT
BEGIN 
   DECLARE A INT; # 직접적인 파라미터 조작 불
   SET N = N-1;
   RETURN(SELECT DISTINCT salary
          FROM Employee
          ORDER BY salary DESC
          LIMIT N, 1
          # LIMIT 1 OFFESET N);
END

SELECT getNthHighestSalary(3)
