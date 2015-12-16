package klutch.homepage.com;

import java.io.File;
import java.io.IOException;
import java.io.Writer;
import java.net.SocketException;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import klutch.homepage.com.dao.SwboardMapper;
import klutch.homepage.com.model.Comment;
import klutch.homepage.com.model.Members;
import klutch.homepage.com.model.Swboard;
import klutch.homepage.com.service.CommentService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class SowonBoardController {
	@Autowired
	SwboardMapper sbs;
	
	@RequestMapping(value = "/sb/insert", method = RequestMethod.POST)
	public String insert(Locale locale, Model model, @ModelAttribute("swboard")Swboard swboard, HttpServletRequest request) throws SocketException {
		
		Date date = new Date();
		int a = sbs.getCount();
		model.addAttribute("num", a);
		
		
		swboard.setArticletime(date);
		swboard.setArticleuserip(request.getRemoteAddr());
		
		sbs.insertArticle(swboard);
		model.addAttribute("List", sbs.getSwboardList());
		
		
		return "/sb/list";
	}
	
	
	@RequestMapping(value = "/sb/insertForm")
	public String insertForm(Locale locale, Model model, @ModelAttribute("swboard")Swboard swboard) {
		return "/sb/insert";
	}
	
	@RequestMapping(value = "/sb/list")
	public String list(Locale locale, Model model) {	
		model.addAttribute("cnoList",sbs.getCnoList());
		model.addAttribute("List", sbs.getSwboardList());
		return "/sb/list";
	}
	
	@RequestMapping(value = "/sb/readArticle")
	public String readArticle(Locale locale, Model model, @RequestParam("num") int num) {	
		sbs.insertReadCnt(num);
		model.addAttribute("article", sbs.getArticle(num));
		return "/sb/readArticle";
	}
	
	@RequestMapping(value = "/sb/delete")
	public String delete(Locale locale, Model model, @RequestParam("num") int num) {
		sbs.deleteArticle(num);
		model.addAttribute("List", sbs.getSwboardList());
		return "/sb/list";
	}
	
	
	@RequestMapping(value = "/sb/updateForm")
	public String updateForm(Locale locale, Model model, @RequestParam("num") int num) {
		model.addAttribute("article", sbs.getArticle(num));	
		return "/sb/updateForm";
	}
	
	@RequestMapping(value = "/sb/update")
	public String update(Locale locale, Model model, @ModelAttribute("swboard")Swboard article, HttpServletRequest request) {
		
		Date date = new Date();
		
		article.setArticletime(date);
		article.setArticleuserip(request.getRemoteAddr());
		
		sbs.updateArticle(article);
		model.addAttribute("List", sbs.getSwboardList());
		
		return "/sb/list";
	}
	
	@RequestMapping(value = "/sb/search")
	public String search(Locale locale, Model model, @RequestParam("type")String type, @RequestParam("search")String search) {
		
		
		List<Swboard> searchedList = null;
		
		
		if(type.equals("content")){
			searchedList = sbs.getSwboardListByContent(search);
		}else if(type.equals("subject")){
			searchedList = sbs.getSwboardListBySubject(search);
		}else if(type.equals("userid")){
			searchedList = sbs.getSwboardListByUserid(search);
		}

		
		model.addAttribute("List", searchedList);
		
		
		
		return "/sb/list";
	}
	

	
	@RequestMapping(value = "/sb/signUpForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String signUpForm(Locale locale, Model model) {		
		return "/sb/signUpForm";
	}
	
	@RequestMapping(value = "/sb/signUp", method = {RequestMethod.GET, RequestMethod.POST})
	public String signUp(Locale locale, Model model,@ModelAttribute("members") Members members, HttpServletRequest request, 
			@RequestParam("uploadFile") MultipartFile uploadFile) {
		
		Date date = new Date();
		if(uploadFile!=null){
			String path = request.getSession().getServletContext().getRealPath("/");
			String fileName = uploadFile.getOriginalFilename();
			members.setMempicture("/resources/memberImages/"+fileName);
			
			try{
				
				System.out.println(path);
				File file = new File(path+"/resources/memberImages/"+fileName);
				uploadFile.transferTo(file);
				
			}catch(IOException e){
				e.printStackTrace();
			}
		}
		
		int m1 = members.getMemphone1();
		int m2 = members.getMemphone2();
		int m3 = members.getMemphone3();
		members.setMemphone(m1+"-"+m2+"-"+m3);
		
		int mb1 = members.getMembirthday1();
		int mb2 = members.getMembirthday2();
		int mb3 = members.getMembirthday3();
		members.setMembirthday(mb1+" 년 "+mb2+" 월 "+mb3+" 일 ");
		
		String me1 = members.getMememail1();
		String me2 = members.getMememail2();
		members.setMememail(me1+"@"+me2);
		
		
		members.setMemdate(date);
		members.setMemip(request.getRemoteAddr());
		
		sbs.insertMembers(members);
		
		
		return "/sb/signUpSuccess";
	}
	
	@RequestMapping(value = "/sb/loginForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String loginForm(Locale locale, Model model) {
		
		
		return "/sb/loginForm";
	}
	
	@RequestMapping(value = "/sb/login", method = {RequestMethod.GET, RequestMethod.POST})
	public String login(Locale locale, Model model, @ModelAttribute("member")Members members, HttpSession session) {
		
		if(1==sbs.loginCheck(members)){
			session.setAttribute("id", members.getMemid());
			return "redirect:/sb/list";
		}
		
		return "/sb/loginFail";
	}
	
	@RequestMapping(value = "/sb/logout", method = {RequestMethod.GET, RequestMethod.POST})
	public String logout(Locale locale, Model model, HttpSession session) {
		
		
		session.invalidate();
		
		model.addAttribute("cnoList",sbs.getCnoList());
		model.addAttribute("List", sbs.getSwboardList());
		
		return "/sb/list";
	}
	
	 	@RequestMapping(value="/sb/re/listCmt", method={RequestMethod.GET, RequestMethod.POST})
	    public String listCmt(@RequestParam("no")String no, ModelMap map) {
	          List<Comment> listCmt = sbs.getListCmt(no);
	          map.put("listCmt", listCmt);
	          return "/sb/reboard/listCmt";
	    }
	   
	    @RequestMapping(value="/sb/re/createCmt", method={RequestMethod.GET, RequestMethod.POST})
	    public void createCmt(Comment dto, Writer writer, @RequestParam("no")int no, HttpServletRequest request) throws IOException {
	    	Date date = new Date();
			dto.setCmtdate(date);
			dto.setCmtip(request.getRemoteAddr());
	    	
	    	int cno = 1;
	    	cno = cno + sbs.getCno(no);
	    	dto.setCno(cno);
	        sbs.createCmt(dto);
	        writer.write("end");
	    }
	    @RequestMapping(value="/sb/re/deleteCmt", method={RequestMethod.GET, RequestMethod.POST})
	    public void deleteCmt(Writer writer, @RequestParam("cno")int cno ,@RequestParam("no")int no) throws IOException {
	          sbs.deleteCmt(cno, no);
	          writer.write("end");
	    }
}
