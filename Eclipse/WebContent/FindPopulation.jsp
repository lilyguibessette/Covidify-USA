<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Find a Population Data Entry</title>
</head>
<body>
	<form action="findpopulation" method="post">
		<h1>Search for a Population Entry by County</h1>
		<p>
				<label for="countyname">County Name</label>
				<input id="countyname" name="countyname" value="${fn:escapeXml(param.countyname)}">
				<label for="statename">State Name</label>
				<input id="statename" name="statename" value="${fn:escapeXml(param.statename)}">
		</p>
		<p>
			<input type="submit"> <br /> <br /> <br /> <span
				id="successMessage"><b>${messages.success}</b></span>
		</p>
	</form>
	<br />
	<div id="populationcreate">
		<a href="populationcreate">Create Population Data Entry</a>
	</div>
	<div id="populationdelete">
		<a href="populationdelete">Delete Population Data Entry</a>
	</div>
	<br />
	<h1>Matching Population Data Entry</h1>
	<table border="1">
		<tr>
			<th>County Name</th>
			<th>Year</th>
			<th>Total Population</th>
			<th>Population 60 plus</th>
		</tr>
		<c:forEach items="${population}" var="population">
			<tr>
				<td><c:out value="${population.getCounty().getCountyName()}" /></td>
				<td><c:out value="${population.getYear()}" /></td>
				<td><c:out value="${population.getTotalPopulation()}" /></td>
				<td><c:out value="${population.getPopulation60Plus()}" /></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<br />
 	   <div id="covidifyhome"><a href="covidifyhome">Covidify USA Home</a></div>
       <div id="findcovidbydate"><a href="findcovidbydate">Find COVID-19 Data Entry</a></div>
       <div id="findcovidbyrace"><a href="findcovidbyrace">Find COVID-19 By Race Data Entry</a></div>
       <div id="findmortalityrate"><a href="findmortalityrate">Find Mortality Rate Data</a></div>
       <div id="findcounty"><a href="findcounty">Find County</a></div>
       <div id="findstate"><a href="findstate">Find State</a></div>
       <div id="findclimate"><a href="findclimate">Find Climate</a></div>
       <div id="findstategovernor"><a href="findstategovernor">Find State Governor List</a></div>
       <div id="findstatehospitaldata"><a href="findstatehospitaldata">Find a State Hospital Data Entry</a></div>
       <div id="findcountyhospital"><a href="findcountyhospital">Find a County Hospital Data Entry</a></div>
       <div id="findpopulation"><a href="findpopulation">Find a Population Entry</a></div>
       <div id="findpresidentialelectionpercent"><a href="findpresidentialelectionpercent">Find a Presidential Election Percentage Entry</a></div>
       <div id="finddemogrpahic"><a href="finddemographic">Find Demographics Data</a></div>
       
</body>
</html>