package com.mail.dao;

import java.util.ArrayList;

import com.mail.entity.Login;
import com.mail.entity.MailBox;
import com.mail.entity.MailUser;

public interface MailDAOInterface {
	public String register(MailUser mm);
	public boolean login(Login ll);
	public int sendmail(MailBox mm);
	public ArrayList<MailBox> mail(MailBox mm);
	public int mailCount(Login ll);
	public MailBox mail1(MailBox mm);
	public int deleteMail(String string);
}
