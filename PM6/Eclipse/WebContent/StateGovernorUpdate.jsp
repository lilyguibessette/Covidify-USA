<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update a State Governor</title>
</head>
<body>
	<h1>Update State Governor</h1>
	<form action="stategovernorupdate" method="post">
		<p>
			<label for="governorname">Governor Name</label>
			<input id="governorname" name="stategovernorname" value="${fn:escapeXml(param.stategovernorname)}">
			<label for="statename">State Name</label>
			<input id="statename" name="statename" value="${fn:escapeXml(param.statename)}">
		</p>
		<p>
			<label for="year">Year</label>
			<input id="year" name="year" value="${fn:escapeXml(param.year)}">
		</p>
		<p>
			<label for="newname">New Governor Name</label>
			<input id="newname" name="newname" value="">
		</p>
		<p>
			<label for="newyear">New Year</label>
			<input id="newyear" name="newyear" value="">
		</p>
		<p>
			<label for="newparty">New Governor Party</label>
			<select id="newparty" name="newparty" >
				<option>Democratic</option>
				<option>Republican</option>
				<option>Other</option>
			</select>
		</p>
		<p>
			<input type="submit">
		</p>
	</form>
	<br/><br/>
	<p>
		<span id="successMessage"><b>${messages.success}</b></span>
	</p>
	<br/><br/>
	<div id="stategovernorcreate"><a href="stategovernorcreate">Create State Governor Entry</a></div>
	<div id="stategovernordelete"><a href="stategovernordelete">Delete State Governor List</a></div>
	<div id="stategovernorupdate"><a href="stategovernorupdate">Update State Governor Entry</a></div>
	<br/><br/>
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