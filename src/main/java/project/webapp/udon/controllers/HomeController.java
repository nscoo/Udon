package project.webapp.udon.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main() {
		
		
		return "main";
	}
	@RequestMapping(value = "/myclub.do", method = RequestMethod.GET)
	public String myclub() {
		
		
		return "myclub";
	}
	@RequestMapping(value = "/club_detail.do", method = RequestMethod.GET)
	public String club_detail() {
		
		
		return "club_detail";
	}

	@RequestMapping(value = "/create_club1.do", method = RequestMethod.GET)
	public String create_club1() {
		
		
		return "create_club1";
	}

	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login() {
		
		
		return "login";

	}
}
