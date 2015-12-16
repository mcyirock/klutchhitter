package klutch.homepage.com.dao;

import java.util.List;

import klutch.homepage.com.model.Comment;
import klutch.homepage.com.model.Members;
import klutch.homepage.com.model.Swboard;

import org.springframework.stereotype.Service;


@Service
public interface SwboardMapper {
    
	public List<Swboard> selectAllSwboard();
	public int getCount();	
	public List<Swboard> getSwboardList();
	public void insertArticle(Swboard swboard);
	public Swboard getArticle(int articleNumber);
	public void deleteArticle(int articleNumber);
	public void updateArticle(Swboard swboard);
	public List<Swboard> getSwboardListBySubject(String search);
	public List<Swboard> getSwboardListByUserid(String search);
	public List<Swboard> getSwboardListByContent(String search);
	
	public void insertMembers(Members members);
	public int loginCheck(Members members);
	
	public List<Comment> getCnoList();
	public void insertReadCnt(int no);
	
	public List<Comment> getListCmt(String no);
    public void createCmt(Comment cmt);
    public void deleteCmt(int cno, int no);
    public int getCno(int no);
}