package kr.or.ddit.prod.service;

import java.util.List;

import kr.or.ddit.prod.dao.IProdDao;
import kr.or.ddit.prod.dao.IProdDaoImpl;
import kr.or.ddit.prod.vo.ProdVo;

public class IProdServiceImpl implements IProdService {
	
	private IProdDao dao;
	private static IProdService service;
	
	private IProdServiceImpl() {
		dao = IProdDaoImpl.getInstance();
	}
	
	
	public static IProdService getInstance() {
		if(service == null ) service = new IProdServiceImpl();
		return service;
	}
	
	@Override
	public List<ProdVo> selectAll( String id ) {
		// TODO Auto-generated method stub
		return dao.selectAll(id);
	}
	
	@Override
	public List<ProdVo> selectProd( String id ) {
		// TODO Auto-generated method stub
		return dao.selectProd(id);
	}

}
