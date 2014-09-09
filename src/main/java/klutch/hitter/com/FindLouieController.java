package klutch.hitter.com;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FindLouieController {
	static int[] qList = {0,0,0,0,0,0,0,0,0};
	
	@RequestMapping(value="/findLouie", method=RequestMethod.GET)
	public String findLouie(Model model){	
		for(int i=0; i<9; i++){
			qList[i] = 0;}
		int louie = 1;
		int answer =(int)(Math.random()*9);
		qList[answer] = louie;
		
		model.addAttribute("qList", qList);
		
		return "louie/findLouie";
	}
	
	@RequestMapping(value="/pickLouie", method=RequestMethod.GET)
	public String pickLouie(Model model, @RequestParam("a")int a){
		if(qList[a]==0 || qList[a]==2){
			qList[a]=2;
		}else{
			//초기화 시키고
			for(int i=0; i<9; i++){
				qList[i] = 0;
				
			}
			return "louie/retry";
		}
		
		model.addAttribute("qList", qList);
		return "louie/findLouie";
	}
}
