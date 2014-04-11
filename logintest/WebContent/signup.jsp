<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	function validateForm(objForm) {

		if (objForm.firstname.value.length == 0) {

			alert("please enter the name");
			objForm.firstname.focus();
			return false;
		}

		var chr = /^[a-zA-Z]+$/;
		if (objForm.firstname.value.match(chr)) {
			return true;
		} else {
			alert('Username must have alphabet characters only');
			objForm.firstname.focus();
			return false;

		}
		
		
		if (objForm.middlename.value.length == 0) {

			alert("please enter the name");
			objForm.middlename.focus();
			return false;
		}
		var ch = /^[a-zA-Z]+$/;

		if (objForm.middlename.value.match(ch)) {
			return true;
		} else {
			alert('middlename must have alphabet characters only');
			objForm.middlename.focus();
			return false;

		}

		if (objForm.lastname.value.length == 0) {

			alert("please enter the name");
			objForm.lastname.focus();
			return false;
		}
		var ch1 = /^[a-zA-Z]+$/;
		if (objForm.lastname.value.match(ch1)) {
			return true;
		} else {
			alert('lastname must have alphabet characters only');
			objForm.lastname.focus();
			return false;

		}

		if (objForm.contactnumber.value.length == 0) {

			alert("please enter the mobile no");
			objForm.contactnumber.focus();
			return false;
		}

		if (isNaN(objForm.contactnumber.value)) {
			alert("please enter valid mobile no");
			objForm.contactnumber.focus();
			return false;
		}
		if ((objForm.contactnumber.value).length < 10) {

			alert("please enter  min 10 digit mobile no");
			objForm.contactnumber.focus();
			return false;

		}
		if (objForm.email.value.length == o) {

			alert("please enter the name");
			objForm.email.focus();
			return false;
		}

		var reg = /^([A-Za-z0-9_\_\.]){1,}\@([A-Za-z0-9_\_\.]){1,}\.([A-Za-z]{2,4})$/;
		var address = document.forms[form_id].elements[email].value;
		if (reg.test(address) == false) {
			alert('Invalid email');
			document.forms[form_id].elements[email].focus();

			return false;
		}

		if (objForm.zipcode.value.length == 0) {

			alert("please enter the zipcode ");
			objForm.zipcode.focus();
			return false;
		}

		if (isNaN(objForm.zipcode.value)) {
			alert("please enter valid zipcode ");
			objForm.contactnumber.focus();
			return false;
		}
		if ((objForm.zipcode.value).length < 6) {

			alert("please enter  min 6 digit zipcode ");
			objForm.zipcode.focus();
			return false;

		}

		return true;
	}
</script>
</head>
<body>
	<s:form action="reg" onsubmit="return validateForm(this)">
		<s:label>Personal Informations</s:label>
		<s:textfield name="firstname" label="firstname"></s:textfield>
		<s:textfield label="middleName" name="middlename"></s:textfield>
		<s:textfield name="lastname" label="lastname"></s:textfield>
		<s:textfield label="Date Of Birth" name="dob"></s:textfield>
		<br />
		<br />
		<br />
		<s:label>Contact Informations</s:label>
		<s:textfield label="Contact Number" name="contactnumber"></s:textfield>
		<s:textfield name="email" label="email"></s:textfield>
		<s:password name="password" label="password"></s:password>
		<s:password name="confirm" label="confirm"></s:password>
		<br />
		<br />
		<br />
		<s:label>Address Details</s:label>
		<s:select label="State" list="{'Madhya Pradesh','Rajsthan'}"
			name="state"></s:select>
		<s:select label="City" list="{'indore','bhopal'}" name="city"></s:select>
		<s:textfield label="Street" name="street"></s:textfield>
		<s:textfield label="Area" name="area"></s:textfield>
		<s:textfield label="Zipcode" name="zipcode"></s:textfield>
		<s:textfield label="Landmark" name="landmark"></s:textfield>

		<s:submit value="submit"></s:submit>
		<s:reset value="reset"></s:reset>
	</s:form>


</body>
</html>