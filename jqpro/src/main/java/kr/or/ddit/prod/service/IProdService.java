package kr.or.ddit.prod.service;

import java.util.List;

import kr.or.ddit.prod.vo.ProdVo;

public interface IProdService {

	
	public List<ProdVo> selectAll(  String id  );

	public List<ProdVo> selectProd( String id );
	
}
