	 <html><body><center>
	 <jsp:useBean id="abc" class="p.Register"></jsp:useBean>
	 <jsp:setProperty property="*" name="abc"/>
	      <%
	      		String userid=abc.registerUser();
			%>
			Hello Mr./Mrs. <jsp:getProperty property="name" name="abc"/> your Registration is successfull
			<br><h3>your user id is <%= userid %> and password is <jsp:getProperty property="pass" name="abc"/> </h3>
			<br><br>if want to login <a href=login.html>click here</a>
		
			</center></body></html>
	
		
		
		
		
		
		
		
		
		