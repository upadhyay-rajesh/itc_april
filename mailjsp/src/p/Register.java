package p;

import com.mail.dao.MailDAO;
import com.mail.dao.MailDAOInterface;
import com.mail.entity.MailUser;

public class Register {
	public Register(){}
	
	private String name;
	private String pass;
	private String address;
	private String email;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String registerUser(){
		MailUser mm=new MailUser();
		mm.setUsername(name);
		mm.setPassword(pass);
		mm.setEmail(email);
		mm.setAddress(address);
		
		MailDAOInterface md=new MailDAO();
		String userid=md.register(mm);
		return userid;
	}
	
}


















