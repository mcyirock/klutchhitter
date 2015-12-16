package klutch.homepage.com;

import java.util.List;

import klutch.homepage.com.dao.SwboardMapper;
import klutch.homepage.com.model.Swboard;
import klutch.homepage.com.model.SwboardList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SowonBoardRestController {
	@Autowired
	SwboardMapper sbs;
	
	@RequestMapping("/sb/list/{page}")
	@ResponseBody
	public SwboardList sbListRest(@PathVariable("page") Integer page){
		List<Swboard> obj = sbs.getSwboardList();
		SwboardList list = new SwboardList();
		list.setSwboards(obj);
		return list;
	}
	
	@RequestMapping("/sb/read/{page}")
	@ResponseBody
	public Swboard sbReadRest(@PathVariable("page") Integer page){
		Swboard obj = sbs.getArticle(page);
		return obj;
	}
}
