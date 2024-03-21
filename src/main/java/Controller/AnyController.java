package Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AnyController {
	
	@RequestMapping("/any/signup")
	public String signup() {
		
		return "signup.a";
	}
}
