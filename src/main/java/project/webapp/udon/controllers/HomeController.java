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
	
	@RequestMapping(value = "/club_members.do", method = RequestMethod.GET)
	public String club_members() {
		
		
		return "club_members";
	}
	
	@RequestMapping(value = "/create_club1.do", method = RequestMethod.GET)
	public String create_club1() {
		
		
		return "create_club1";
	}
	
	@RequestMapping(value = "/create_club2.do", method = RequestMethod.GET)
	public String create_club2() {
		
		
		return "create_club2";
	}
	@RequestMapping(value = "/club_recruit.do", method = RequestMethod.GET)
	public String club_recruit() {
		
		
		return "club_recruit";
	}
	
	@RequestMapping(value = "/recruit_board.do", method = RequestMethod.GET)
	public String recruit_board() {
		
		
		return "recruit_board";
	}
	
	@RequestMapping(value = "/recruit_detail.do", method = RequestMethod.GET)
	public String recruit_detail() {
		
		
		return "recruit_detail";
	}
	
	@RequestMapping(value = "/apply_members.do", method = RequestMethod.GET)
	public String apply_members() {
		
		
		return "apply_members";
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
	//마이 페이지
	@RequestMapping(value = "/mypage.do", method = RequestMethod.GET)
	public String mypage() {
		
		
		return "mypage";
	}
	//게시글 상세
	@RequestMapping(value = "/detail_board.do", method = RequestMethod.GET)
	public String detail_board() {
		
		
		return "detail_board";
	}

	//커뮤니티 상세
	@RequestMapping(value = "/community_detail.do", method = RequestMethod.GET)
	public String community_detail() {
		
		
		return "community_detail";
	}
	//커뮤니티
	@RequestMapping(value = "/community.do", method = RequestMethod.GET)
	public String community() {
		
		
		return "community";
	}
	//글쓰기
	@RequestMapping(value = "/write_board.do", method = RequestMethod.GET)
	public String write_board() {
		
		
		return "write_board";
	}
}
