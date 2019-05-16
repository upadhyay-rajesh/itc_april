<html><body><center><%@page import="com.mail.entity.*,com.mail.dao.*" %>
	      <%
	      String accnum1=request.getParameter("to");
			String accnum2=request.getParameter("subject");
			String accnum3=request.getParameter("message");
	 			
			Object p=session.getAttribute("id");
		
			String accnum=p.toString();
			%>
			<form method=post action=send.jsp>
			<h1>MAIL BOX OF <%=accnum%></h1>
			<br>
			<br>
			<a href=logout.jsp>logout</a>
			<a href=inbox1.jsp>inbox</a>
			<a href=compose.jsp>compose</a>
			<table border=.6>
			<tr>
					<td>TO</td>
					<td><input type=text name=to value=<%=accnum1%>></td>
			</tr>
			<tr>
					<td>FROM</td>
					<td><input type=text name=from value=<%=accnum%>></td>
			</tr>
			<tr>
					<td>SUBJECT</td>
					<td><input type=text name=subject value=RE:<%=accnum2%>></td>
			</tr>
			<tr>
					<td></td>

					<td><textarea rows=3 column=5 name=message>@@&&:<%=accnum3%></textarea></td>
			</tr>
			<tr>
					<td><input type=submit value=send ></td>
			</tr>
					
			</form>
			
			</table>
			</center></body></html>