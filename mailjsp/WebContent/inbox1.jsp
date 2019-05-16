			
<html><body><center>			<%@page import="com.mail.entity.*,com.mail.dao.*,java.util.*" %>
	      <%
			
			Object p=session.getAttribute("id");
		
			String accnum=p.toString();
			MailBox mm=new MailBox();
			mm.setReceiver(accnum);
			
			MailDAOInterface md=new MailDAO();
			ArrayList<MailBox> aa=md.mail(mm);
			%>
			<h1>MAIL BOX OF <%=accnum%></h1>
			<br>
			<br>
			<form method=post action=delete.jsp><input type=submit value=delete>
			<a href=logout.jsp>logout</a>
			<a href=inbox1.jsp>inbox</a>
			<a href=compose.jsp>compose</a>
			<table border=1>
			<tr>
				<th>
					select
				</th>
				<th>
					subject
				</th>
				<th>
					sender
				</th>
				<th>
					time
				</th>
			</tr>
			<%
			for(MailBox res2 : aa)
			{
				String a0=res2.getSubject();
				String a1=res2.getSender();
				String a2=res2.getSenddate();
				//String a2=a3.toString();  
				%>
				<tr>
					<td><input type=checkbox name=c value=<%=a0%>></td>
					<td><a href=mail.jsp&m=<%=a0%>><%=a0%></a></td>
					<td><%=a0%></td>
					<td><%=a2%></td>

					
				</tr>
		<%	} %>
			
			</table></form>
			</center></body></html>
			
			