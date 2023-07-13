# DML
## INSERT
```sql
INSERT INTO 테이블명(column list) values (value_list)
# 예시
INSERT INTO Salary(Id,Salary) Values('2,'550')

```
|제목|내용|설명|
|------|---|---|
|Id|Name|Salary|Date
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
    |제목|내용|설명|
    |------|---|---|
    |Id|Name|Salary|Date
    |1|A|350|2020-03-31
    |2|Null|650|Null
2. 지정 행의 값 갱신하기
   ```sql
   UPDATE 테이블명 SET 컬럼 = 값 WHERE 조건식;

    # 예시
    UPDATE Salary SET Salary = Salary + 100 WHERE Id = 2;
    
    '='은 비교 연산자, 대입 연산자로도 사용 가능
   ```
   |제목|내용|설명|
    |------|---|---|
    |Id|Name|Salary|Date
    |1|A|250|2020-03-31
    |2|Null|650|Null
   
## DELETE 
