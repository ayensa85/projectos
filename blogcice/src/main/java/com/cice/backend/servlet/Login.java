package com.cice.backend.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class Login extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String user = req.getParameter("user");
		String password = req.getParameter("password");
		System.out.println("Intento de olgin del usuario" + user);
		try{
			Class.forName("com.mysql.jdbc.ÇDriver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog", "root", "Deborita18");
			Statement statement = conn.createStatement();
			String sql = "select * from usuario where user=" + user +" and password=" + password;
			ResultSet resultado= statement.executeQuery(sql);
			if(resultado.first()){
				System.out.println("Login Correcto");
			}else{
				System.out.println("Login InCorrecto");
				
			}
			
		}catch(ClassNotFoundException e){
			
			
		}catch(SQLException e){
			
		}
		
	}
	
	

}
