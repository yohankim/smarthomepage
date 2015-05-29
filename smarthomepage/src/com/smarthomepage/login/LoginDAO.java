package com.smarthomepage.login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.smarthomepage.join.MemberBean;
import com.smarthomepage.join.RemoveDAO;
import com.smarthomepage.util.DBmanager;

public class LoginDAO {
	Connection conn;
	Statement stmt;
	ResultSet rs;
	PreparedStatement pstmt;
	
	public LoginDAO() {
		conn = DBmanager.getConnection();
	}
	
	private static LoginDAO instance = new LoginDAO();
	public static LoginDAO getInstance(){
		return instance;
	}
	
	public Connection getConnection() throws Exception{
		Connection conn = null;
		Context initContext = new InitialContext();
		Context envContext = (Context) initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
		conn = ds.getConnection();
		return conn;
	}
	public String login(String id){
		System.out.println("DAO로 ID값이 왔을까 : " + id);
		String pass = "";
		String sql = "select pwd from member where id = '"+id+"'";
		
		try {
			
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				pass = rs.getString("pwd");
			}
			System.out.println("LoginDAO에서 리턴된 값 :"+pass);
		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("LoingDAO에서 에러 발생");
		}
		return pass;
		
	}
}
