<html><body><center><%@page import="com.mail.entity.*,com.mail.dao.*" %>
	      <%
	      String accnum=request.getParameter("to");
			String accnum1=request.getParameter("from");
			String accnum2=request.getParameter("subject");
			String accnum3=request.getParameter("message");
			String sysdate=new java.util.Date().toString();
			
			MailBox mm=new MailBox();
			mm.setSender(accnum1);
			mm.setReceiver(accnum);
			mm.setSubject(accnum2);
			mm.setMessage(accnum3);
			mm.setSenddate(sysdate);
			
			MailDAOInterface md=new MailDAO();
			int i=md.sendmail(mm);
			
			if(i>0){ %>
				hello mr./mrs.<%=accnum%><br>
				<b>your message send Succesfull</b><br>
				<a href=logout.jsp>logout</a>
				<a href=inbox1.jsp>inbox</a>
				<a href=compose.jsp>compose</a>
		<%} %>
		</center></body></html>