package klutch.homepage.com.service;


import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import klutch.homepage.com.model.Swboard;

public interface SwBoardService {

	public int getCount();	
	public List<Swboard> getSwboardList();
	public void insertArticle(Swboard swboard);
	public Swboard getArticle(int articleNumber);
	public void deleteArticle(int articleNumber);
	public void updateArticle(Swboard swboard);
	public List<Swboard> getSwboardListBySubject(String search);
	public List<Swboard> getSwboardListByUserid(String search);
	public List<Swboard> getSwboardListByContent(String search);
	
}
