package Controller;


import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import Service.UserService;
import VO.UserVO;



@Controller
public class MainController {
	private static final Logger log = LoggerFactory.getLogger(MainController.class);
	@Autowired
	private UserService userServ;
	
	
	@RequestMapping("/")
	public String root() throws Exception {
		List<UserVO> userL = userServ.allUser();
		log.debug("test!!!"+userL.toString());
		return "index.t";
	}
	
	@RequestMapping("/1")
	public String q1() {
		return "/views/index1.jsp";
		}
}
