<html><body><center><%@page import="com.mail.entity.*,com.mail.dao.*" %>
	      <%
	      int ii=0;
			String aa[]=request.getParameterValues("c");
			MailDAOInterface md=new MailDAO();
			for(int i=0;i<aa.length;i++){
				ii=md.deleteMail(aa[i]);
			}
			if(ii>0){
			%>
			<jsp:forward page="inbox1.jsp"></jsp:forward>
				
		<%	} %>
		</center></body></html>