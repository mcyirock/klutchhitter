package klutch.homepage.com;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import klutch.homepage.com.dao.SwboardMapper;
import klutch.homepage.com.service.CounterService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	SwboardMapper sm;
	@Autowired
	CounterService cs;
	
	@RequestMapping(value = "/klutch/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpServletRequest request) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		//model.addAttribute("vo", sm.selectAllSwboard() );
		cs.insertCnt(request);
		int cnt = cs.getTotalCnt();
		model.addAttribute("totalCnt", cnt);
		model.addAttribute("ip", request.getRemoteAddr());
		return "home";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String homeByRoot(Locale locale, Model model, HttpServletRequest request) {
		cs.insertCnt(request);
		int cnt = cs.getTotalCnt();
		model.addAttribute("totalCnt", cnt);
		model.addAttribute("ip", request.getRemoteAddr());
		return "home";
	}
	
	@RequestMapping(value="/home/main", method=RequestMethod.GET)
	public String homeMain(Model model){
		return "/home/main";
	}
	
}
