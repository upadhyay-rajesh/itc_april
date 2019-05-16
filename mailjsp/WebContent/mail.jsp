<html><body><center><%@page import="com.mail.entity.*,com.mail.dao.*" %>
	      <%
	      
			Object p=session.getAttribute("id");
			
			String accnum=p.toString();

			String mail1=request.getParameter("m");
			MailBox mm=new MailBox();
			mm.setReceiver(accnum);
			mm.setSubject(mail1);
			
			MailDAOInterface md=new MailDAO();
			
			MailBox mm1=md.mail1(mm);
			%>
			<h1>MAIL BOX OF <%=accnum%></h1>
			<br>
			<br>
			<a href=delete.jsp>delete</a>
			<a href=logout.jsp>logout</a>
			<a href=inbox1.jsp>inbox</a>
			<a href=compose.jsp>compose</a>

			<table border=1>
					
			<tr>
					<td>message</td>
					<td><textarea rows=3 column=5 name=c ><%=mm1.getMessage()%> </textarea></td>
									
				</tr>
			
			</table>
			<a href=reply&to=<%=mm1.getSender()%>&subject=<%=mm1.getSubject()%>&message=<%=mm1.getMessage()%>>reply</a>
			</center></body></html>