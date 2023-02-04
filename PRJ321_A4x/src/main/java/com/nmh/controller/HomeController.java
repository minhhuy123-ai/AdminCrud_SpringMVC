package com.nmh.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.nmh.dao.AccountDAOImpl;
import com.nmh.model.Account;

@Controller
public class HomeController {
	
	@RequestMapping(value="/login.html")
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) {
		
		String usermail = request.getParameter("usermail");
		String password = request.getParameter("password");
//		String remember = request.getParameter("remember");
		
		ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
	    AccountDAOImpl accountDAOImpl = (AccountDAOImpl) context.getBean("accountDAOImpl");
	    Account acc = accountDAOImpl.login(usermail , password);
	    
		if(usermail  != null && password != null) {
			if(acc != null) {
				String fullName = acc.getName();
				String surName = accountDAOImpl.getSurName(fullName);
				if(acc.getRole() == 1) {
					((ConfigurableApplicationContext)context).close();
					return new ModelAndView("admin", "s", surName);
				}else {
					((ConfigurableApplicationContext)context).close();
					return new ModelAndView("login", "error", "You are User, not Admin");
				}
			}else {
				
				((ConfigurableApplicationContext)context).close();
				return new ModelAndView("login", "error", "Usermail or password is invalid");
			}
				
		}
		((ConfigurableApplicationContext)context).close();
		return new ModelAndView("login", "error", "Please enter usermail and password");
		
	}
	
	@RequestMapping("/logout.html")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		
		return "redirect:/login.html";
	}
	
	@RequestMapping("/loadAllAccount.html")
	public ModelAndView loadAllAccounts(HttpServletRequest request, HttpServletResponse response) {
		
		ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
	    AccountDAOImpl accountDAOImpl = (AccountDAOImpl) context.getBean("accountDAOImpl");
	    List<Account> accounts = accountDAOImpl.listAccounts();
	    if(accounts != null) {
	    	((ConfigurableApplicationContext)context).close();
	    	return new ModelAndView("AccountCrud", "listA", accounts);
	    }else {
	    	((ConfigurableApplicationContext)context).close();
	    	return new ModelAndView("AccountCrud", "error", "No user account available");
	    }
	}
	
	@RequestMapping("/add-account.html")
	public String addAccount(HttpServletRequest request, HttpServletResponse response) {
		String umail = request.getParameter("user_mail"); 
		String name = request.getParameter("user_name");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		
		ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
	    AccountDAOImpl accountDAOImpl = (AccountDAOImpl) context.getBean("accountDAOImpl");
	    accountDAOImpl.create(name, umail, password, address, phone);
	    //not yet check error when same user_mail
	    ((ConfigurableApplicationContext)context).close();
	    return "redirect:/loadAllAccount.html";
	}
	
	@RequestMapping("/load-account.html")
	public ModelAndView loadAccount(HttpServletRequest request, HttpServletResponse response) {
		String mail = request.getParameter("mail");
		
		ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
	    AccountDAOImpl accountDAOImpl = (AccountDAOImpl) context.getBean("accountDAOImpl");
	    Account acc = accountDAOImpl.getAccount(mail);
	    
	    ((ConfigurableApplicationContext)context).close();
	    return new ModelAndView("editForm", "detail", acc);
	}
	
	@RequestMapping("/edit.html")
	public String editAccount(HttpServletRequest request, HttpServletResponse response) {
		String umail = request.getParameter("user_mail_2"); 
		String name = request.getParameter("user_name_2");
		String password = request.getParameter("password_2");
		String address = request.getParameter("address_2");
		String phone = request.getParameter("phone_2");
		
		ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
	    AccountDAOImpl accountDAOImpl = (AccountDAOImpl) context.getBean("accountDAOImpl");
	    accountDAOImpl.update(name, password, address, phone, umail);
	    //not yet check error when edit (bcs edit data not meet requirements)
	    ((ConfigurableApplicationContext)context).close();
	    return "redirect:/loadAllAccount.html";
	}
	
	@RequestMapping("/del-by-mail.html")
	public String deleteAccount(HttpServletRequest request, HttpServletResponse response) {
		String mail = request.getParameter("mail");
		
		ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
	    AccountDAOImpl accountDAOImpl = (AccountDAOImpl) context.getBean("accountDAOImpl");
	    accountDAOImpl.delete(mail);
	    
	    ((ConfigurableApplicationContext)context).close();
	    return "redirect:/loadAllAccount.html";
	}

	@RequestMapping("/admin.html")
	public ModelAndView backToAdmin(HttpServletRequest request, HttpServletResponse response) {
		
		return new ModelAndView("admin");
	}
}





