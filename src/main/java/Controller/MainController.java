package Controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class MainController {
	private static final Logger log = LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping("/")
	public String root() {
		log.debug("test!!!");
		return "index.t";
	}
	
	@RequestMapping("/1")
	public String q1() {
		return "/views/index1.jsp";
		}
}
