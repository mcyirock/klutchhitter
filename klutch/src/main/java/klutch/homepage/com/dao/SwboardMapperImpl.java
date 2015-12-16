package klutch.homepage.com.dao;

import java.util.List;

import klutch.homepage.com.model.Comment;
import klutch.homepage.com.model.Members;
import klutch.homepage.com.model.Swboard;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class SwboardMapperImpl extends SqlSessionDaoSupport implements SwboardMapper {
	
	public List<Swboard> selectAllSwboard(){
		return getSqlSession().selectList("SwboardMapper.selectAllSwboard");
	}

	@Override
	public int getCount() {
		return getSqlSession().selectOne("SwboardMapper.getCount");
	}

	@Override
	public List<Swboard> getSwboardList() {
		return getSqlSession().selectList("SwboardMapper.getSwboardList");
	}

	@Override
	public void insertArticle(Swboard swboard) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Swboard getArticle(int articleNumber) {
		return getSqlSession().selectOne("SwboardMapper.getArticle", articleNumber);
	}

	@Override
	public void deleteArticle(int articleNumber) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateArticle(Swboard swboard) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Swboard> getSwboardListBySubject(String search) {
		return getSqlSession().selectList("SwboardMapper.getSwboardListBySubject", search);
	}

	@Override
	public List<Swboard> getSwboardListByUserid(String search) {
		return getSqlSession().selectList("SwboardMapper.getSwboardListByUserid", search);
	}

	@Override
	public List<Swboard> getSwboardListByContent(String search) {
		Swboard vo = new Swboard();
		vo.setSearch(search);
		return getSqlSession().selectList("SwboardMapper.getSwboardListByContent", vo);
	}

	@Override
	public void insertMembers(Members members) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int loginCheck(Members members) {
		
		Members mem = getSqlSession().selectOne("SwboardMapper.loginCheck", members);
		int result = 0;
		if(mem!=null){
			result = 1;
		}
		return result;
	}

	@Override
	public List<Comment> getCnoList() {
		return getSqlSession().selectList("SwboardMapper.getCnoList");
	}

	@Override
	public void insertReadCnt(int no) {
		Swboard record = getArticle(no);
		record.setArticlereadcnt(record.getArticlereadcnt()+1);
		getSqlSession().update("SwboardMapper.insertReadCnt", record);
	}

	@Override
	public List<Comment> getListCmt(String no) {
		return getSqlSession().selectList("SwboardMapper.getListCmt", no);
	}

	@Override
	public void createCmt(Comment cmt) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteCmt(int cno, int no) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int getCno(int no) {
		// TODO Auto-generated method stub
		return 0;
	}
}
