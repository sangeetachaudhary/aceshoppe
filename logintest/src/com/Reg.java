package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.opensymphony.xwork2.ActionSupport;

public class Reg extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private String firstname;
	private String middlename;
	private String lastname;
	private int dob;
	private long contactnumber;
	private String email;
	private String password;
	private String confirm;
	private String state;
	private String city;
	private String street;
	private String area;
	private int zipcode;
	private String landmark;
	

	


	public String execute() throws Exception
	{
		int i=1;
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");   
		Connection con=DriverManager.getConnection(  
		"jdbc:oracle:thin:@192.168.1.106:1521:xe","BATCH_B_PC_5","BATCH_B_PC_5");   
		PreparedStatement pstm=con.prepareStatement("insert into registration values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			if(password.equals(confirm))
			{
				pstm.setInt(1, i);
				pstm.setString(2,firstname);
				pstm.setString(3,middlename);  
				pstm.setString(4,lastname); 
				pstm.setInt(5,dob);  
				pstm.setLong(6,contactnumber);  
				pstm.setString(7,email);  
				pstm.setString(8,password);  
				pstm.setString(9,state);  
				pstm.setString(10,city);  
				pstm.setString(11,area); 
				pstm.setString(12,street);  
				pstm.setInt(13,zipcode);  
				pstm.setString(14,landmark);  

			int a=pstm.executeUpdate();
			i++;
			System.out.println(a);
			}
			else
			{
				return "error";
			}
			con.close();  
			System.out.println("saved");
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		return SUCCESS;
	}





	public String getFirstname() {
		return firstname;
	}





	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}





	public String getMiddlename() {
		return middlename;
	}





	public void setMiddlename(String middlename) {
		this.middlename = middlename;
	}





	public String getLastname() {
		return lastname;
	}





	public void setLastname(String lastname) {
		this.lastname = lastname;
	}





	public int getDob() {
		return dob;
	}





	public void setDob(int dob) {
		this.dob = dob;
	}





	public long getContactnumber() {
		return contactnumber;
	}





	public void setContactnumber(long contactnumber) {
		this.contactnumber = contactnumber;
	}





	public String getEmail() {
		return email;
	}





	public void setEmail(String email) {
		this.email = email;
	}





	public String getPassword() {
		return password;
	}





	public void setPassword(String password) {
		this.password = password;
	}





	public String getConfirm() {
		return confirm;
	}





	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}





	public String getState() {
		return state;
	}





	public void setState(String state) {
		this.state = state;
	}





	public String getCity() {
		return city;
	}





	public void setCity(String city) {
		this.city = city;
	}





	public String getStreet() {
		return street;
	}





	public void setStreet(String street) {
		this.street = street;
	}





	public String getArea() {
		return area;
	}





	public void setArea(String area) {
		this.area = area;
	}





	public int getZipcode() {
		return zipcode;
	}





	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}





	public String getLandmark() {
		return landmark;
	}





	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}




}
