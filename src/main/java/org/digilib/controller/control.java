package org.digilib.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class control {

	@RequestMapping(value = "/logins", method = RequestMethod.GET)
	public ModelAndView adminloginverify(HttpSession httpSession) {
		  ModelAndView model = new ModelAndView("login");
		
		return model;
	}
	
	
	@RequestMapping(value = "/loginverify", method = RequestMethod.POST)
	public ModelAndView loginverify(HttpSession httpSession) {
		  ModelAndView model = new ModelAndView("login");
		
		return model;
	}
	
	
}
