package javaexp.a13_database;

import java.sql.*;
// DAO(Database Access Object)
public class A01_Conn {

	// 1. 공통필드 선언하기
	private Connection con; // 연결객체
	private Statement stmt; // 대화객체
	private ResultSet rs; // data를 받는 결과 객체 select sql의 처리결과로 활용
	
	// 2. 공통 연결 메소드 : 하위에 선언한 기능메소드에서 호출처리
	public void setConn() {
		// 1. jdbc 드라이버의 클래스를 객체화하여 메모리에 로딩 : 연결 - 필수예외처리(컴파일시 필요)
		// ex1) 예외처리를 하고, Class.forName 문자열 변경, info부분 문자열 변경
		// ex2) DriverManager.getConnection(info,"scott","tiger")
		//		계정과 비밀번호 변경했을때 어떤 에러가 나는가
		
		try {//왼쪽에 오류버튼에 마우스올리면 surround with trycatch가 나온다 그거클릭
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			//2. 특정서버에 접속정보로 접속 - localhost
			// 		ip,port,sid,계정,비밀번호
			String info = "jdbc:oracle:thin:@localhost:1521:xe";
			// jdbc:oracle:thin - 위에 선언한 jdbc드라이버를 통해서
			// @localhost - 특정 서버에 접속(ip - 외부 접속시는 127.242.21.243 활용, 현재 com에 있는 서버일 경우 localhost/127.0.0.1)
			// 127.0.0.1 -> loopback ip라고 한다.
			// 1521 - 여러가지 서비스 중 하나의 port로 접속함 ex) 하나의 com에서 여러개의 service를 제공하는 서버를 만들 수 있는데,
			//			이것을 구분하여 외부에서 접속할 때 port를 활용한다
			// xe - 데이터베이스의 식별자, 오라클서버 안에서 여러개의 DB를 만들 수 있다
			con = DriverManager.getConnection(info,"scott","tiger");
			System.out.println("접속성공!");
			
		} catch (ClassNotFoundException e) {// 클래스파일을 메모리 로딩시켜 사용할 수 있게 만들 때, 필수 예외(컴파일예외) 처리
			// TODO Auto-generated catch block
//			e.printStackTrace();
			System.out.println("클래스 에러: "+e.getMessage());
		} catch (SQLException e) {// DB관련 객체들을 사용할 때 SQLException 예외 처리
			// TODO Auto-generated catch block
//			e.printStackTrace();
			System.out.println("DB처리 에러: "+e.getMessage());
		}
		
	}
	
	
	// 3. 각 기능별 메소드
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A01_Conn dao = new A01_Conn();
		dao.setConn();
	}

}
