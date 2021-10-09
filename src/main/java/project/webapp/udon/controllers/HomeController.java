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
	@RequestMapping(value = "/club_detail.do", method = RequestMethod.GET)
	public String club_detail() {
		
		
		return "club_detail";
	}
	//로그인
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
