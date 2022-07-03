package javaexp.a02_start2;

public class A05_PrimitiveCataType {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		 # 기본데이터 유형
		 1. 범위가 한정적으로 stack 영역(jvm메모리 영역중 하나)에 직접적으로 할당하는 데이터 유형을 말한다.
		 2. 기본 타입은 정수형-문자(문자열 아님), 실수형, 논리(boolean)으로 데이터유형이있다
		 3. 정수형은 1byte인 byte로부터 시작해서, short(2byte), int(4byte), long(8byte)와
		  문자를 담는 char(2byte)로 크기에 따라 나눌 수 있다.
		  
		  메모리를 효율적으로 사용하기 위해서 크기에 따라서 다른 데이터유형을 사용한다.
		  ex) 2라는 숫자는 반드시 byte에만 할당될 수 있나요?
		  - 현재 데이터를 할당하는 것보다는 변경되어 최대값이 어떤 데이터를 넣느냐를 기준으로
		  데이터타입을 지정하여야 한다.
		  
		  */
		byte num01 = 25;
		byte num02 = 25;
		// num02는 현재는 25이지만, 확장성이 있기 때문에 long으로 사용한다
		char ch01 = 'A';
		// 한자 할당한다
		// 이런 문자형 데이터를 unicode로 코드값이 정수형에 연결되어 있고, 실제 저장되는
		// 데이터는 정수형이기에 정수형 데이터 유형으로 포함시킨다.
		System.out.println("A의 unicode값: "+(int)ch01);
		int codeVal = 88;
		System.out.println("88코드값의 문자: "+(char)codeVal);
		
		
		  
		 /* 
		 4. 이 정수형의 기본 데이터유형은 int 유형이다.
		 	리터럴 데이터 기준이다.
		 	25
		 	2500000000 숫자로 쓰는것은 int형인 4byte범위까지만 가능하고,
		 	더 이상의 범위는 long으로 표기하여야하고, long형 데이터에 할당하여야 한다.
		 */
//		int num03 = 2500000000;
		long num04 = 250000000000L; // 4byte이상의 정수형은 L을 붙혀서
		// long 데이터라는것을 표기하여야 하고, 실제 데이터 유형도 long에만 할당이 가능하다.
		System.out.println("num04: "+num04);
		
		
		
		/*
		 5. 실수형은 4byte인 float 와 8byte인 double이 있다.
		 	실수형의 기본 데이터타입은 double이다.
		 6. 논리유형은 true/false가 할당할 수 있는 데이터 유형으로 2가지만 데이터를 할당할 수 있다.
		 * */

	}

}
