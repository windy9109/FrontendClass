package kr.or.ddit.buyer.service;

import java.util.List;

import kr.or.ddit.buyer.dao.IBuyerDao;
import kr.or.ddit.buyer.dao.IBuyerDaoImpl;
import kr.or.ddit.buyer.vo.BuyerVo;

public class IBuyerServiceImpl implements IBuyerService{
	private IBuyerDao dao;
	private static IBuyerService service;
	
	private IBuyerServiceImpl(){
		dao = IBuyerDaoImpl.getInstance();
	}
	
	public static IBuyerService getInstance() {
		if(service == null ) service = new IBuyerServiceImpl();
		return service;
	}
	
	@Override
	public List<BuyerVo> selectAll() {
		return dao.selectAll();
	}
	@Override
	public BuyerVo selectBuyer(String id) {
		return dao.selectBuyer(id);
	}
	
	

}
