package com.smarthomepage.join;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.smarthomepage.util.DBmanager;

public class SearchIdDAO {
	Connection conn; 
	Statement stmt; 
	ResultSet rs;   
	PreparedStatement pstmt;
	public SearchIdDAO() {
		conn = DBmanager.getConnection();
	}
	private static SearchIdDAO instance = new SearchIdDAO();
	public static SearchIdDAO getInstance(){
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
	public String searchId(String name){
		String id = "";
		String sql = "select id from member where name = '"+name+"'";
		
		try{
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				id = rs.getString("id");
			}
		}catch(Exception ex){
			ex.printStackTrace();
			System.out.println("SearchIdDAO에서 에러남");
		}
		return id;
	}
		}
	
