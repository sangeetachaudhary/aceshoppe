<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
function validate(form_id,rec) {
	var reg=/^([A-Za-z0-9_\_\.]){1,}\@([A-Za-z0-9_\_\.]){1,}\.([A-Za-z]{2,4})$/;
	var address=document.forms[form_id].elements[rec].value;
	if(reg.test(address)==false){
		alert('Invalid email');
		document.forms[form_id].elements[rec].focus();
		
		return false;
	}
	
}
</script>
<s:form  id="e_form" action="mail" onsubmit="javascript:return validate('e_form','rec');">
	<table align="center">
		<s:textfield name="rec" label="Enter Email Id"></s:textfield>
		<s:submit value="ok"></s:submit>
	</table>
	
</s:form>

</body>
</html>