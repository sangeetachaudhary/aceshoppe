package com;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class mail {
private String rec;
	
	public String execute()
	{
		Properties p = new Properties();
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.host", "smtp.gmail.com");
		p.put("mail.smtp.port", "587");
		Session session = Session.getDefaultInstance(p,
				new javax.mail.Authenticator()
			{
					protected PasswordAuthentication getPasswordAuthentication()
					{
						return new PasswordAuthentication(
								"syands931@gmail.com", "solovely");
					}
			});
		Message message = new MimeMessage(session);

		try
		{
			message.setFrom(new InternetAddress("syands931@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse(rec));
			Class.forName("oracle.jdbc.driver.OracleDriver");   
			Connection con=DriverManager.getConnection(  
			"jdbc:oracle:thin:@192.168.1.106:1521:xe","BATCH_B_PC_5","BATCH_B_PC_5");   
			Statement stmt=con.createStatement(); 
			ResultSet rs=stmt.executeQuery("select password from registration where email_id='"+rec+"'");
			rs.next();
			String passw=rs.getString(1);
			message.setSubject("Password Sending");
			message.setText("your Password is::"+passw);
			Transport.send(message);
			return "success";
			
		}
		catch (Exception e) 
		{
			e.printStackTrace();
			return "error";
		}
	}

	public String getRec() {
		return rec;
	}
	public void setRec(String rec) {
		this.rec = rec;
	}


}
