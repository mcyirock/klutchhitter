package klutch.homepage.com.dao;


import java.util.List;

import klutch.homepage.com.model.Comment;

public interface CommentMapper {
    
	public List<Comment> getListCmt(String no);
    public void createCmt(Comment cmt);
    public void deleteCmt(Comment cmt);
    public int getCno(int no);
}