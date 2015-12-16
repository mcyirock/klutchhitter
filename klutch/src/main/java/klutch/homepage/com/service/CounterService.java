package klutch.homepage.com.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;


public interface CounterService {
	public void insertCnt(HttpServletRequest request);
	public int getTodayCnt();
	public int getTotalCnt();
}
