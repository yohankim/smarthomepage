package net.jdbc.test;

import java.sql.DriverManager;
import java.sql.Connection;

public class JdbcMain {
	public static void main(String [] args){
		Connection conn = null;
		try{
			//드라이버 파일에 있는 클래스를 불러온다.
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//@ 앞 부분은 DB마다 다르다.
			//이 코드에서는 localhost는 IP주소
			//1512는 포트번호
			//xe는 SID를 의미한다
			String driver = "jdbc:oracle:thin:@localhost:1521/xe";
			//계정이름
			String userId = "hr";
			//계정비번
			String password = "hr";
			//Connection 초기화
			conn = DriverManager.getConnection(driver,userId,password);
			System.out.println("성공적으로 연결이 되었습니다.");
		}catch(Exception ex){
			ex.printStackTrace();
			System.out.println("JDBC 에러가 발생했습니다.");
		}
	}
}
