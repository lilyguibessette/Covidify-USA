<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete a COVID-19 Race Data Entry</title>
</head>
<body>
	<h1>${messages.title}</h1>
	<form action="covidbyracedelete" method="post">
		<p>
		<p>
			<div <c:if test="${messages.disableSubmit}">style="display:none"</c:if>>
				<label for="statename">State Name</label>
				<input id="statename" name="statename" value="${fn:escapeXml(param.statename)}">
		</p>	
		<p>
				<label for="date">Date (yyyy-mm-dd)</label>
				<input id="date" name="date" value="${fn:escapeXml(param.date)}">
		</p>
			</div>
		</p>
		<p>
			<span id="submitButton" <c:if test="${messages.disableSubmit}">style="display:none"</c:if>>
			<input type="submit">
			</span>
		</p>
	</form>
	<br/><br/>
	<div id="covidbyracecreate"><a href="covidbyracecreate">Create COVID-19 Race Data Entry</a></div>
 	<div id="covidbyracedelete"><a href="covidbyracedelete">Delete COVID-19 Race Data Entry</a></div>
	<br/><br/>
       <div id="findcovidbydate"><a href="findcovidbydate">Find COVID-19 Data Entry</a></div>
       <div id="findcounty"><a href="findcounty">Find County</a></div>
       <div id="findstate"><a href="findstate">Find State</a></div>
       <div id="findstategovernor"><a href="findstategovernor">Find State Governor List</a></div>
       <div id="statehospitaldatacreate"><a href="statehospitaldatacreate">Create a State Hospital Data Entry</a></div>
       <div id="countyhospitalcreate"><a href="countyhospitalcreate">Create a State Hospital Data Entry</a></div>
       <div id="populationcreate"><a href="populationcreate">Create a Population Entry</a></div>
       <div id="presidentialelectionpercentagecreate"><a href="presidentialelectionpercentagecreate">Create a Presidential Election Percentage Entry</a></div>
</body>
</html>