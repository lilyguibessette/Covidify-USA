<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Find a State Hospital Data Entry</title>
</head>
<body>
	<form action="findstatehospitaldata" method="post">
		<h1>Search for a State Hospital Entry by Year</h1>
		<p>
			<label for="year">Date (yyyy)</label> <input id="date" name="date"
				value="${fn:escapeXml(param.date)}">
		</p>
		<p>
			<input type="submit"> <br /> <br /> <br /> <span
				id="successMessage"><b>${messages.success}</b></span>
		</p>
	</form>
	<br />
	<div id="statehospitalcreate">
		<a href="statehospitalcreate">Create State Hospital Data Entry</a>
	</div>
	<div id="statehospitaldelete">
		<a href="statehospitaldelete">Delete State Hospital Data Entry</a>
	</div>
	<br />
	<h1>Matching State Hospital Data Entry</h1>
	<table border="1">
		<tr>
			<th>State Name</th>
			<th>Year</th>
			<th>Number of Hospitals</th>
			<th>Number of Hospital Employees</th>
		</tr>
		<c:forEach items="${stateHospital}" var="stateHospital">
			<tr>
				<td><c:out value="${stateHospital.getState().getStateName()}" /></td>
				<td><c:out value="${stateHospital.getYear()}" /></td>
				<td><c:out value="${stateHospital.getNumberOfHospitals}" /></td>
				<td><c:out
						value="${stateHospital.getNumberOfHospitalEmployees()}" /></td>
			</tr>
		</c:forEach>

	</table>
	<br />
	<br />
  <div id="findcovidbydate"><a href="findcovidbydate">Find COVID-19 Data Entry</a></div>
       <div id="findcounty"><a href="findcounty">Find County</a></div>
       <div id="findstate"><a href="findstate">Find State</a></div>
       <div id="findclimate"><a href="findclimate">Find Climate</a></div>
       <div id="findstategovernor"><a href="findstategovernor">Find State Governor List</a></div>
       <div id="findstatehospitaldata"><a href="findstatehospitaldata">Find a State Hospital Data Entry</a></div>
       <div id="findcountyhospital"><a href="findcountyhospital">Find a County Hospital Data Entry</a></div>
       <div id="findpopulation"><a href="findpopulation">Find a Population Entry</a></div>
       <div id="findpresidentialelectionpercent"><a href="findpresidentialelectionpercent">Find a Presidential Election Percentage Entry</a></div>

</body>
</html>
