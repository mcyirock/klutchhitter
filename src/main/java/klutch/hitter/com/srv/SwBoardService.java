package klutch.hitter.com.srv;
import java.util.List;

import klutch.hitter.com.model.Comment;
import klutch.hitter.com.model.Swboard;


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
	public List<Comment> getCnoList();
	public void insertReadCnt(int cnt, int no);
	
	public List<Swboard> getSwboardList4(int page);
	public List<Swboard> getSwboardList6();
	
	
	
}
