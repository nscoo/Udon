package project.webapp.udon.controllers;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
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
	
}
