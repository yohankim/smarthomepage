package com.smarthomepage.join;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.smarthomepage.util.DBmanager;

public class RemoveDAO {
	Connection conn;
	Statement stmt;
	ResultSet rs;
	PreparedStatement pstmt;
	
	public RemoveDAO() {
		conn = DBmanager.getConnection();
	}
	
	private static RemoveDAO instance = new RemoveDAO();
	public static RemoveDAO getInstance(){
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
	
	public	int removeMember(MemberBean bean){
		int num = 0;
		String sql = "delete from member"
				+ "where id = ? ";
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, bean.getId());
			
		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("RemoveDAO에서 에러가 났음");
		}
		
		return num;
	}
}
