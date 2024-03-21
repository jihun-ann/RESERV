package Controller;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import Service.UserService;



@Controller
public class MainController {
	private static final Logger log = LoggerFactory.getLogger(MainController.class);
	@Autowired
	private UserService userServ;
	
	
	@RequestMapping("/login")
	public String root() throws Exception {
		return "login.a";
	}
	
	@RequestMapping("/1")
	public String q1(Model mo) {
		mo.addAttribute("user_info","user1111");
		return "/views/index1.jsp";
		}
	
}
