<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Find a Presidential Election Percent Data Entry</title>
</head>
<body>
	<form action="findpresidentialelectionpercent" method="post">
		<h1>Search for a PresidentialElectionPercent Entry by Year</h1>
		<p>
			<label for="state">State Name</label> <input id="state" name="state"
				value="${fn:escapeXml(param.state)}">
		</p>
		<p>
			<label for="county">County Name</label> <input id="county" name="county"
				value="${fn:escapeXml(param.county)}">
		</p>
		<p>
			<label for="year">Year (yyyy)</label> <input id="year" name="year"
				value="${fn:escapeXml(param.year)}">
		</p>
		<p>
			<input type="submit"> <br />
			<br />
			<br /> <span id="successMessage"><b>${messages.success}</b></span>
		</p>
	</form>
	<br />
	<div id="presidentialelectionpercentcreate">
		<a href="presidentialelectionpercentcreate">Create Election
			Percentage Entry</a>
	</div>
	<div id="presidentialelectionpercentdelete">
		<a href="presidentialelectionpercentdelete">Delete Election
			Percentage Data Entry</a>
	</div>
	<br />
	<h1>Matching PresidentialElectionPercent Data Entry</h1>
	<table border="1">
		<tr>
			<th>County Name</th>
			<th>Year</th>
			<th>Democrats</th>
			<th>Republicans</th>
			<th>Other</th>
		</tr>
		<c:forEach items="${presidentElectionPercent}"
			var="presidentElectionPercent">
			<tr>
				<td><c:out
						value="${presidentElectionPercent.getCounty().getCountyName()}" /></td>
				<td><c:out value="${presidentElectionPercent.getYear()}" /></td>
				<td><c:out
						value="${presidentElectionPercent.getDemocratsPercent()}" /></td>
				<td><c:out
						value="${presidentElectionPercent.getRepublicansPercent()}" /></td>
				<td><c:out
						value="${presidentElectionPercent.getOtherPercent()}" /></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<br />
	  <div id="findcovidbydate"><a href="findcovidbydate">Find COVID-19 Data Entry</a></div>
	  <div id="findcovidbyrace"><a href="findcovidbyrace">Find COVID-19 By Race Data Entry</a></div>
       <div id="findcounty"><a href="findcounty">Find County</a></div>
       <div id="findstate"><a href="findstate">Find State</a></div>
       <div id="findclimate"><a href="findclimate">Find Climate</a></div>
       <div id="findstategovernor"><a href="findstategovernor">Find State Governor List</a></div>
       <div id="findstatehospitaldata"><a href="findstatehospitaldata">Find a State Hospital Data Entry</a></div>
       <div id="findcountyhospital"><a href="findcountyhospital">Find a County Hospital Data Entry</a></div>
       <div id="findpopulation"><a href="findpopulation">Find a Population Entry</a></div>
       <div id="findpresidentialelectionpercent"><a href="findpresidentialelectionpercent">Find a Presidential Election Percentage Entry</a></div>
       <div id="finddemogrpahic"><a href="finddemographic">Find COVID-19 By Demographic Data Entry</a></div>

</body>
</html>
