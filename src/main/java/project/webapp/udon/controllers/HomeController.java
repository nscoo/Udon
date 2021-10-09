package project.webapp.udon.controllers;

import org.springframework.stereotype.Controller;
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
	
	@RequestMapping(value = "/create_club2.do", method = RequestMethod.GET)
	public String create_club2() {
		
		
		return "create_club2";
	}


	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login() {
		
		
		return "login";

	}
	//회원가입 페이지
	@RequestMapping(value = "/register.do", method = RequestMethod.GET)
	public String register() {
		
		
		return "register";
	}
	//아이디, 비밀번호 찾기
	@RequestMapping(value = "/find_account.do", method = RequestMethod.GET)
	public String find_account() {
		
		
		return "find_account";
	}
}
