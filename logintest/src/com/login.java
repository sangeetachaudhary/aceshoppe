package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class login {
	

	private String user;
	private String password;
	public String getUser()
	{
		return user;
	}
	public void setUser(String user)
	{
		this.user = user;
	}
	public String getPassword()
	{
		return password;
	}
	public void setPassword(String password)
	{
		this.password = password;
	}
	
	public String execute()
	{
		String un=null;
		String pw=null;
		 try
		{
			 Class.forName("oracle.jdbc.driver.OracleDriver");   
				Connection con=DriverManager.getConnection(  
				"jdbc:oracle:thin:@192.168.1.106:1521:xe","BATCH_B_PC_5","BATCH_B_PC_5");
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery("select email_id,password from registration where email_id='"+user+"' and password='"+password+"'");
				rs.next();
				un=rs.getString(1);
				pw=rs.getString(2);
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		if(user.equalsIgnoreCase(un)&&password.equalsIgnoreCase(pw) )
		{
		return "success";
		}
		else{
			return "error";
		}
	}



}
