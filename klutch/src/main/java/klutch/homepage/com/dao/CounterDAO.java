package klutch.homepage.com.dao;

import klutch.homepage.com.model.Counter;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class CounterDAO extends SqlSessionDaoSupport{
	public void insertCnt(Counter param){
		getSqlSession().insert("Counter.insertCnt", param);
	}
	
	public int getLastPK(){
		return getSqlSession().selectOne("Counter.getLastPK");
	}
}
