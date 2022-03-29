package kr.or.ddit.lprod.service;

import java.util.List;

import kr.or.ddit.lprod.dao.LprodDao;
import kr.or.ddit.lprod.dao.LprodDaoImpl;
import kr.or.ddit.lprod.vo.LprodVo;

public class LprodServiceImpl implements LprodService{

	private LprodDao dao;
	private static LprodService service;
	
	private LprodServiceImpl() {
		dao = LprodDaoImpl.getInstance();
	}
	
	
	public static LprodService getInstance() {
		if(service == null ) service = new LprodServiceImpl();
		return service;
	}
	
	@Override
	public List<LprodVo> selectAll() {
		// TODO Auto-generated method stub
		return dao.selectALL();
	}

}
