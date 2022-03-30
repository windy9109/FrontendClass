package kr.or.ddit.buyer.service;

import java.util.List;

import kr.or.ddit.buyer.vo.BuyerVo;

public interface IBuyerService {
	
	public List<BuyerVo> selectAll();
	
	public BuyerVo selectBuyer( String id );

}
