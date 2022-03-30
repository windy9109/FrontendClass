package kr.or.ddit.buyer.dao;

import java.util.List;

import kr.or.ddit.buyer.vo.BuyerVo;

public interface IBuyerDao {

	
	public List<BuyerVo> selectAll();
	
	public BuyerVo selectBuyer( String id );
	
	
	
	
}
