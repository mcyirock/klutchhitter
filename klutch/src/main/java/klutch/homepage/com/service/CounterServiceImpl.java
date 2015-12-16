package klutch.homepage.com.service;

import javax.servlet.http.HttpServletRequest;

import klutch.homepage.com.dao.CounterDAO;
import klutch.homepage.com.model.Counter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CounterServiceImpl implements CounterService {
	@Autowired
	CounterDAO dao;
	

	@Override
	public int getTodayCnt() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getTotalCnt() {
		return dao.getLastPK();
	}

	@Override
	public void insertCnt(HttpServletRequest request) {
		Counter param = new Counter();
		param.setIp(request.getRemoteAddr());
		dao.insertCnt(param);
	}

}
