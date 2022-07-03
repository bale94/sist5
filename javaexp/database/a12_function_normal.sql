/*
# 기타일반 함수
1. null 처리
	1) nvl(데이터, null값일떄 처리할 데이터)
		해당 데이터가 null값일 때 처리할 데이터를 설정해서 기본 데이터 설정을 통해 연산 및 null로 인한 오류를 방지하고자 한다.
	2) 주의 : 초기값은 해당데이터 유형과 동일하여야 한다.
	3) nvl2(데이터, null값이 아닐때 처리, null값일때 처리)
		ex) comm이 null일때는 100으로 null아닐떄는 현재 데이터에서 comm의 10%로 처리    와 같은 경우가 예시.
2. 조건문 처리
 * 
 * */
SELECT comm, nvl(comm,0), sal+comm, sal+nvl(comm,0)
FROM emp;

--nvl(comm,' ') : comm이 숫자형인데 초기값은 ' ' 공백을 문자열을 선언하면 에러

CREATE TABLE emp_cpy101
AS SELECT * FROM emp;
SELECT * FROM emp_cpy101;
SELECT ename, nvl(ename, '공백') 이름, sal, nvl(sal, 100) 급여
FROM EMP_CPY101;
/**/
SELECT ename, sal, comm, nvl2(comm, comm*1.1, 100) "보너스"
FROM emp;
/*
# nullif(데이터1, 데이터2)
두 개의 매개변수로 받는 데이터를 비교하여 동일하면 null을 반환하고,
동일하지않으면 첫번째 데이터1을 반환처리하는 함수를 말한다.
 * 
 * */
SELECT nullif('a', 'a') "동일할 때",
	nullif('a', 'b') "동일하지 않을 때",
	nvl(nullif('a', 'a'),'동일') "동일할 때",
	nvl(nullif('a', 'b'),'동일') "동일하지 않을 때"
FROM dual;
/*
# decode 함수
1.  데이터베이스에서 조건에 따라 처리할 때, 활용되는 함수이다.
2. 기본형식 : 매개변수의 갯수는 짝수를 유지하여야 한다.
	decode(데이터1, 조건1, 데이터1과 조건1이 같을때 데이터, 같지않을 때 데이터)
 * */
SELECT ename, deptno,
	decode(deptno,10,'인사과',
				  20,'총무과',
				  30,'행정과',
				 '기타과') 부서명
FROM emp;
/*
# CASE 조건 함수 처리
1. decode가 확장된 함수형식으로 비교/논리 연산식을 이용하여 해당 결과값이 true일 경우를 지정하여 처리한다.
2. 기본 형식
	1) 형식1
	CASE WHEN 논리/관계식1 THEN 처리할데이터
		 WHEN 논리/관계식2 THEN 처리할데이터 : 위에 선언된 논리/관계식은 제외
		 ...
		 ELSE 위에선언된논리/관계식이 아닐 때 처리할데이터
	END
	2) 형식2
	CASE 컬럼|데이터
		WHEN 컬럼에데이터1일때 THEN 처리할데이터
		WHEN 컬럼에데이터2일때 THEN 처리할데이터
		...
		ELSE 위에 WHEN에 나열된 데이터가 아닐 때 처리할 데이터
	END
 
   
 * */
SELECT ename, deptno,
	CASE WHEN deptno = 10 THEN sal*0.2
		WHEN deptno = 20 THEN sal*0.5
		WHEN deptno = 30 THEN sal*0.7
		ELSE sal*1.2
	END 보너스
FROM emp;
--ex) sal을 기준으로 5000이상일 때 A등급, 4000~5000 B등급 ..
--		case when을 활용하여 이름,급여,급여등급을 출력
SELECT ename,sal,
	CASE WHEN sal>=5000 THEN 'A등급'
		WHEN sal>=4000 THEN 'B등급'
		WHEN sal>=3000 THEN 'C등급'
		WHEN sal>=2000 THEN 'D등급'
		ELSE '2000미만'
	END 급여등급
FROM emp;
SELECT ename, deptno,
	CASE deptno WHEN 10 THEN sal*0.2
				WHEN 20 THEN sal*0.5
				WHEN 30 THEN sal*0.7
				ELSE sal*1.2
	END show
FROM emp;
--ex) 직책의 종류를 확인하고 직책에 따라서 출장지를 서울 대구 부산 광주 제주도로 설정하세요
SELECT DISTINCT job
FROM emp;
SELECT ename, job,
	CASE job WHEN 'CLERK' THEN '서울'
			 WHEN 'SALESMAN' THEN '대구'
			 WHEN 'PRESIDENT' THEN '부산'
			 WHEN 'MANAGER' THEN '광주'
			 WHEN 'ANALYST' THEN '제주도'
			 ELSE '무직'
	END show
FROM emp;




