	<html><body><center>		<%@page import="com.mail.entity.*,com.mail.dao.*" %>
	      <%
			String accnum=request.getParameter("a");
			String accnum1=request.getParameter("a1");

			Login ll=new Login();
			ll.setId(accnum);
			ll.setPassword(accnum1);
			
			MailDAOInterface md=new MailDAO();
			boolean b=md.login(ll);
			if(b){
				session.setAttribute("id",accnum); 
				
				int count=md.mailCount(ll); 
				%>
				welcome <%=accnum%>
				<a href=inbox1.jsp>inbox(<%=count%>)</a>
				<a href=logout.jsp>logout</a>
				<a href=compose.jsp>compose</a>
		<%	} %>
			
			
		</center></body></html>	
			
			
			
			
			
			
			
			
			
			
			
			