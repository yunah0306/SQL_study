# DML
## INSERT
```sql
INSERT INTO 테이블명(column list) values (value_list)
# 예시
INSERT INTO Salary(Id,Salary) Values('2,'550')

```
|Id|Name|Salary|Date|
|------|---|---|---|
|1|A|250|2020-03-31
|2|Null|550|Null

## UPDATE
1. 전체 열에 대해 업데이트
    ```sql
    UPDATE 테이블명 SET 컬럼 = 값;
    #예시
    UPDATE Salary SET Salary = Salary + 100;
    
    '='은 비교 연산자, 대입 연산자로도 사용 가능
    ```
    |Id|Name|Salary|Date|
    |------|---|---|---|
    |1|A|350|2020-03-31
    |2|Null|650|Null
2. 지정 행의 값 갱신하기
   ```sql
   UPDATE 테이블명 SET 컬럼 = 값 WHERE 조건식;

    # 예시
    UPDATE Salary SET Salary = Salary + 100 WHERE Id = 2;
    
    '='은 비교 연산자, 대입 연산자로도 사용 가능
   ```
    |Id|Name|Salary|Date|
    |------|---|---|---|
    |Id|Name|Salary|Date
    |1|A|250|2020-03-31
    |2|Null|650|Null
3. 조건문 사용
   ```sql
   UPDATE table
    SET 컬럼명 = CASE
                    WHEN
                    WHEN
                ELSE
                END
   ```
## DELETE 
1. 테이블 전체
   ```sql
   DELETE FROM 테이블명 ;

    # 예시
    DELETE FROM Salary
   ```
   |Id|Name|Salary|Date|
   |------|---|---|---|
   
2. 조건에 맞는 행 삭제
   ```sql
   DELETE FROM 테이블명 WHERE 조건식;

    # 예시
    DELETE FROM Salary WHERE Id = 2;
   ```
   |Id|Name|Salary|Date|
   |------|---|---|---|
   |1|A|250|2020-03-31
3. 조인 활용
   ```sql
      DELETE T1, T2
    FROM T1
         INNER JOIN T2 ON T1.id = T2.ref
    WHERE T1.id = 1
   ```
T1
|Id|
|--|
|~~1~~
|2
|3

T2
|Id|ref|
|--|--|
|~~A~~|~~1~~
|B|2
|C|3
    
