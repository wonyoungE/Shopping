package com.spring.mvc;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.dto.Customer;
import com.spring.service.CustomerService;

@Controller
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	CustomerService customerService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginForm() {
		
		return "login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam("id") String id, @RequestParam("pw") String pw,
						HttpSession session, Model model) throws SQLException, Exception {
		String view = "error";
		
		Customer customer = customerService.getCustomerByIdAndPw(id, pw);
		
		session.setAttribute("userId", customer.getCustomerId());
		
		view = "redirect:/home";
		
		return view;
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		
		if(session != null) {
			session.invalidate();
		}
		
		return "redirect:/home";
	}
}
