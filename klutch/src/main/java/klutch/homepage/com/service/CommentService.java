package klutch.homepage.com.service;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import klutch.homepage.com.model.Comment;


public interface CommentService {
	public List<Comment> getListCmt(String no);
    public void createCmt(Comment cmt);
    public void deleteCmt(Comment cmt);
    public int getCno(int no);
}
