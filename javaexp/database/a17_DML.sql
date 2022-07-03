/*
# 데이터 조작어
1. DML(Data Manipulation Language)
	테이블에 새로운 데이터를 입력하거나 기존 데이터를 수정 또는 삭제하기 위한 명령어
2. 종류
	1) insert : 새로운 데이터 입력 명령어
	2) update : 기존 데이터 수정 명령어
	3) delete : 기존 데이터 삭제 명령어
	4) merge : 두개의 테이블을 하나의 테이블로 병합하는 명령어
3. 트랜잭션
	여러개의 명령문을 하나의 논리적인 작업단위로 처리하는 기능
	트랜잭션 관리 명령어
		- commit : 트랜잭션의 정상적인 종료를 위한 명령어
		- rollback : 트랜잭션의 비정상적인 중단을 위한 명령어
		DB서버
	
클라이언트1 클라이언트2 클라이언트3	

클라이언트1이 데이터를 변경해서 commit하기 전까지는 클라이언트1 화면에서만 변경된 데이터로 보인다.
	commit 하기 전에 rollback을 하면 클라이언트1에게 이전 변경 전 데이터로 변경된다.
	다시 변경 후, commit 하는순간 클라이언트2, 클라이언트3에게 데이터를 확인했을때 변경 전 데이터를
	볼 수 있다.
	
# 데이터 입력
1. 테이블에 데이터를 입력하기 위한 명령인 insert명령문 사용
2. 데이터 입력 방법
	1) 단일 행 입력 : 한번에 하나의 행을 테이블에 입력하는 방법
	2) 다중 행 입력 : 서브쿼리를 이용하여 한번에 여러 행을 동시에 입력하는 방법
3. 단일 행 입력 방법
	1) 기본 명령문
		- 컬럼명 명시없이 : 전체 테이블에 데이터 입력
			insert into 테이블명 values(데이터1, 데이터2, ..)
				- 테이블에서 선언된 순서와 타입대로 데이터를 나열하여야 한다.
			
		- 컬럼명 명시하여 : 해당 컬럼에만 데이터 입력
			insert into 테이블명(컬럼명1, 컬럼명2)
						values(데이터1, 데이터2);
	2) 사용 방법
		
 * 
 * */
SELECT * FROM EMP_CP100 ec ;
-- 컬럼명 지정하지 않고 전체데이터 입력
-- 초기에 테이블이 만들어진 순서와 데이터 유형대로 데이터를 입력처리한다
-- 입력시 에러 check
-- 1. 전체 컬럼의 데이터를 입력 : 추후에 입력할 내용이면 null로 처리
-- 2. 순서와 type이 맞는지?
-- 3. 데이터가 크기가 맞는지?
INSERT INTO EMP_CP100 values(9999, '신길동', '사원', 7878, sysdate, 3000, 100, 10);
-- 컬럼명 지정하여 해당컬럼에 데이터 입력
INSERT INTO EMP_CP100(empno, ename, sal) VALUES(9998, '오길동', 3500);
SELECT * FROM EMP_CP100 ec ;
-- # 입력시 에러 check
-- 1. 명시된 컬럼명에 순서와 type, 크기에 맞게 values값을 할당하여야 한다.
CREATE TABLE emp_cp102
AS SELECT empno, ename, sal 
FROM emp
WHERE 1=0; -- 테이블의 구조만 복사하여 테이블이 생성된다.
SELECT * FROM emp_cp102;
-- ex1) 전체컬럼을 한꺼번에 입력처리
-- ex2) empno와 sal만 입력처리
INSERT INTO emp_cp102 values(1234, 'HELENA', 3200);
INSERT INTO emp_cp102(empno, sal) values(2345, 2700);
SELECT * FROM emp_cp102;
/*
# null 데이터 입력
1. 명시적으로 null 데이터 입력
	지정한 또는 전체 테이블을 입력할 때 null로 명시적으로 데이터를 입력처리
2. 묵시적으로 null 데이터입력
	지정한 컬럼만 데이터입력하는 경우, 그 외에 컬럼은 null로 입력이된다.
 * 
 * */
SELECT * FROM emp_cp100;
INSERT INTO EMP_CP100 values(7781, '오길동', NULL, NULL, NULL, 3000, NULL, null);
INSERT INTO EMP_CP100(empno, ename) VALUES(9997, '하길동');
/*
# 날짜 데이터 입력 방법
1. 날짜는 고유의 날짜타입이 있기에 이를 기본적으로 문자나 숫자로 바로 입력할 수 없다.
	to_char(날짜형, '보고자하는형식') : 보고자하는 형식으로 날짜를 바꿔준다.
2. to_date() 함수를 이용해서 지정한 형식으로 문자열을 통해 입력이 가능하다.
3. 기본형식
	to_date('문자열데이터', '지정한형식')
 * 
 * */
INSERT INTO emp_cp100(empno, hiredate)
	VALUES(1002, to_date('2022-05-25', 'YYYY-MM-DD'));
SELECT *
FROM emp_cp100
WHERE empno=1002;
INSERT INTO emp_cp100(empno, hiredate) values(1003, sysdate);
SELECT * FROM EMP_CP100 ec ;
-- ex1) 오늘 입사한 사원정보를 전체 입력처리
-- ex2) 사원번호, 사원명, 입사일, 급여를 8000, '김철수', 2022-01-01, 3500으로 처리
INSERT INTO EMP_CP100 values(12, 'KIM', '사원', NULL, sysdate, 2400, NULL, null);
INSERT INTO EMP_CP100(empno, ename, hiredate, sal) VALUES(8000, '김철수', to_date('2022-01-01', 'YYYY-MM-DD'), 3500);

SELECT to_char(sysdate, 'YYYY/MM')||'/10' FROM dual;
INSERT INTO emp_cp100 values(1005, '오길동', '사원', 7839, to_date(to_char(sysdate, 'YYYY/MM')||'/10', 'YYYY/MM/DD'),
	3000, 100, 10);
SELECT * FROM emp_cp100;




