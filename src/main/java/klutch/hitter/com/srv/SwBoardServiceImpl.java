package klutch.hitter.com.srv;

import java.util.List;

import klutch.hitter.com.dao.SwboardMapper;
import klutch.hitter.com.model.Comment;
import klutch.hitter.com.model.Swboard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class SwBoardServiceImpl implements SwBoardService{

	@Autowired
	SwboardMapper swboardMapper;
	
	@Override
	public int getCount() {
		return swboardMapper.getCount();
	}

	@Override
	public List<Swboard> getSwboardList() {
		return swboardMapper.getSwboardList();	
	}

	@Override
	public void insertArticle(Swboard swboard) {
		swboardMapper.insert(swboard);
	}

	@Override
	public Swboard getArticle(int articleNumber) {
		return swboardMapper.selectByPrimaryKey(articleNumber);	
	}

	@Override
	public void deleteArticle(int articleNumber) {
		swboardMapper.deleteByPrimaryKey(articleNumber);
	}

	@Override
	public void updateArticle(Swboard swboard) {
		swboardMapper.updateByPrimaryKey(swboard);
		
	}

	@Override
	public List<Swboard> getSwboardListBySubject(String search) {
		return swboardMapper.getSwboardListBySubject(search);
	}

	@Override
	public List<Swboard> getSwboardListByUserid(String search) {
		return swboardMapper.getSwboardListByUserid(search);
	}

	@Override
	public List<Swboard> getSwboardListByContent(String search) {
		return swboardMapper.getSwboardListByContent(search);
	}

	@Override
	public List<Comment> getCnoList() {
		return swboardMapper.getCnoList();
	}

	@Override
	public void insertReadCnt(int cnt, int no) {
		swboardMapper.insertReadCnt(cnt, no);
	}

}
