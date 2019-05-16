<html><body><center>
<%@page import="com.mail.entity.*,com.mail.dao.*" %>
	      <%
	      
			Object p=session.getAttribute("id");
			
			String accnum=p.toString(); %>
			
			<a href=logout.jsp>logout</a>
			<a href=inbox1.jsp>inbox</a>
			
			<form method=post action=send.jsp>
			<h1>MAIL BOX OF <%=accnum%></h1>
			<br>
			<br>
			
			<table border=1>
			<tr>
					<td>TO</td>
					<td><input type=text name=to ></td>
			</tr>
			<tr>
					<td>FROM</td>
					<td><input type=text name=from ></td>
			</tr>
			<tr>
					<td>SUBJECT</td>
					<td><input type=text name=subject ></td>
			</tr>
			<tr>
					<td></td>

					<td><textarea rows=3 column=5 name=message ></textarea></td>
			</tr>
			<tr>
					<td><input type=submit value=send ></td>
			</tr>
					
			</form>
			
			</table>
			</center></body></html>