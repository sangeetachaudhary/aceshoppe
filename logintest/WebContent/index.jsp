<%@page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
 function validateForm(objForm) {
		
	 
	 if(objForm.user.value.length==0){
		 
		 alert("please enter the name");
		 objForm.user.focus();
		 return false;
	 }
	 if(objForm.password.value.length==0){
		 
		 alert("please enter the password");
		 objForm.password.focus();
		 return false;
	 }
	 
	 return true;
}
 

</script>
 
</head>
<body>

<s:form action="save" onsubmit="return validateForm(this)">
<s:textfield name="user" label="user"></s:textfield>
<s:password name="password" label="password"></s:password>
<s:a href="forgetpassword">forget password</s:a>
<s:submit value="submit"></s:submit>
<s:reset value="rest"></s:reset>
<s:a href="signup">signup</s:a>

</s:form>

</body>
</html>