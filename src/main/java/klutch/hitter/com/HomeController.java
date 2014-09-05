package klutch.hitter.com;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import klutch.hitter.com.model.HomeMessage;
import klutch.hitter.com.srv.SwBoardService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	SwBoardService swb;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		model.addAttribute("bloglist", swb.getSwboardList6());
		
		return "home";
	}
	
	@RequestMapping(value = "/blog", method = RequestMethod.GET)
	public String blog(Locale locale, Model model, @RequestParam(value = "page", required = false, defaultValue = "0")int page) {
		logger.info("Welcome blog! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		if(page<=0){
			//마이너스 페이지로 가면 안되!
			page=0;
		}
		
		//글 가지고 오기
		model.addAttribute("list",swb.getSwboardList4(page));
		
		
		model.addAttribute("page", page);
		
		
		return "blog";
	}
	
	@RequestMapping(value = "/blogPost", method = RequestMethod.GET)
	public String blogPost(Locale locale, Model model) {
		logger.info("Welcome blogPost! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "blogPost";
	}
	
	@RequestMapping(value = "/homeMessage", method = RequestMethod.POST)
	public String homeMessage(Locale locale, Model model, @ModelAttribute("hm")HomeMessage hm, HttpServletRequest request, HttpServletResponse response) throws IOException {
		logger.info("Welcome blogPost! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		hm.setIp(request.getRemoteAddr());
		hm.setRegDate(date);
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		if(swb.insertHomeMessage(hm)==1){
			out.println("<script>alert('Thank you!')</script>");
		}else{
			out.println("<script>alert('Something is wrong!')</script>");
		}
		
		return "home";
	}
	
}
