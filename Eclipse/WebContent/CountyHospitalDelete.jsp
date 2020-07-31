<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Hospital Data for a County</title>
</head>
<body>
	<h1>${messages.title}</h1>
	<form action="countyhospitaldelete" method="post">
		<p>
		<p>
			<div <c:if test="${messages.disableSubmit}">style="display:none"</c:if>>
				<label for="countyname">County Name</label>
				<input id="countyname" name="countyname" value="${fn:escapeXml(param.countyname)}">
				<label for="statename">State Name</label>
				<input id="statename" name="statename" value="${fn:escapeXml(param.statename)}">
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
	<div id="countyhospitalcreate"><a href="countyhospitalcreate">Create County Hospital Entry</a></div>
	<div id="countyhospitaldelete"><a href="countyhospitaldelete">Delete County Hospital List</a></div>
	<br/><br/>
      
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