package kr.or.ddit.prod.dao;

import java.util.List;

import kr.or.ddit.prod.vo.ProdVo;

public interface IProdDao {
	
	public List<ProdVo> selectAll( String id );
	
	
	public List<ProdVo> selectProd( String id );

}
