<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %><%@
taglib uri="http://liferay.com/tld/portlet" prefix="liferay-portlet" %><%@
taglib uri="http://liferay.com/tld/theme" prefix="liferay-theme" %><%@
taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<liferay-theme:defineObjects />

<portlet:defineObjects />

<portlet:actionURL var="demo" name="updateData"></portlet:actionURL>

<aui:form action="<%=demo%>" method="post">

	<aui:input type="checkbox" name="employeeId" id="employeeId"></aui:input>

	<div id="employeeDetails">
		<aui:input type="text" name="name" id="employeeId2">
			<%
				if (true) { //defalty i kept true how to check this condition on check box basic
			%>
			<aui:validator name="required"  />
			<%
				}
			%>
		</aui:input>
		<aui:input type="text" name="email" id="employeeId3">
			<%
				if (true) {
			%>
			<aui:validator name="required" />
			<%
				}
			%>

		</aui:input>
	</div>

	<aui:button-row>
		<aui:button type="submit" />

	</aui:button-row>
</aui:form>


<aui:script>
AUI().use('event', 'node', function(A) {
	A.one('#employeeDetails').hide(); // to hide div defaultly
	
	var buttonObject = A.all('input[type=checkbox]');
	buttonObject.on('click', function(event) {

		if (A.one("#<portlet:namespace/>employeeId").attr('checked')) { 
			A.one('#employeeDetails').show(); //for checked condition
			
		}

		 else {
			A.one('#employeeDetails').hide(); // for non checked condition
		
		} 

	});

});
</aui:script>




