package com.dojo.omikujiform;

//add
import org.springframework.stereotype.Controller;


//add
import org.springframework.ui.Model;

//add
import org.springframework.web.bind.annotation.RequestMapping;

//new import
import org.springframework.web.bind.annotation.RequestParam;

//new import : HttpSession
import jakarta.servlet.http.HttpSession;

//new import
import org.springframework.web.bind.annotation.RequestMethod;

//new:
//import org.springframework.web.bind.annotation.PostMapping;

//new:
//import org.springframework.web.bind.annotation.GetMapping;


//add
@Controller
public class OmikujiController {
	
	// home
	@RequestMapping("/omikuji")
	public String index() {
		return "index.jsp";
	}
	
	//processing omikuji 
	@RequestMapping(value="/process", method=RequestMethod.POST)
	public String login(
		@RequestParam(value="number") Integer number,
	    @RequestParam(value="city") String city,
	    @RequestParam(value="hobby") String hobby,
	    @RequestParam(value="thing") String thing,
	    @RequestParam(value="say") String say,
	    	HttpSession session) {
	    
	    // CODE TO PROCESS FORM ie. check email and password
		   session.setAttribute("number", number);
		   session.setAttribute("city", city);
		   session.setAttribute("hobby", hobby);
		   session.setAttribute("thing", thing);
		   session.setAttribute("say", say);
	    	
	    	return "redirect:/omikuji/show"; // <-- we'll change this when we learn redirecting
	}
	
	@RequestMapping("/omikuji/show")
    public String resultPage(Model model){
      // view model to render on the page.
         return "results.jsp";
     } 
}

