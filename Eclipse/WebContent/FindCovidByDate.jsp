<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Find a COVID-19 Data Entry</title>
</head>
<body>
	<form action="findcovidbydate" method="post">
		<h1>Search for a COVID-19 Data Entry by County and State Name Pair and Date</h1>
		<p>
			<label for="countyname">County Name</label>
			<input id="countyname" name="countyname" value="${fn:escapeXml(param.countyname)}">
			<label for="statename">State Name</label>
			<input id="statename" name="statename" value="${fn:escapeXml(param.statename)}">
		</p>
		<p>
			<label for="date">Date (yyyy-mm-dd)</label>
			<input id="date" name="date" value="${fn:escapeXml(param.date)}">
		</p>
		<p>
			<input type="submit">
			<br/><br/><br/>
			<span id="successMessage"><b>${messages.success}</b></span>
		</p>
	</form>
	<br/>
	<div id="covidbydatecreate"><a href="covidbydatecreate">Create COVID-19 Data Entry</a></div>
	<br/>
	<h1>Matching COVID-19 Data Entry</h1>
        <table border="1">
            <tr>
                <th>County Name</th>
				<th>State Name</th>
                <th>Date</th>
                <th>COVID-19 Deaths</th>
				<th>COVID-19 Cases</th>
            </tr>
                <tr>
					<td><c:out value="${covidbydate.getCounty().getCountyName()}" /></td>
					<td><c:out value="${covidbydate.getCounty().getState().getStateName()}" /></td>
					<td><fmt:formatDate value="${covidbydate.getDate()}" pattern="MM-dd-yyyy hh:mm:sa"/></td>
					<td><c:out value="${covidbydate.getCovidDeaths()}" /></td>
					<td><c:out value="${covidbydate.getCovidCases()}" /></td>
                </tr>

       </table>
</body>
</html>
