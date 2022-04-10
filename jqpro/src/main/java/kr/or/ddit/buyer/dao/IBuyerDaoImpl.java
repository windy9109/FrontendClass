package kr.or.ddit.buyer.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.buyer.vo.BuyerVo;
import kr.or.ddit.ibatis.config.SqlMapClientFactory;
import kr.or.ddit.lprod.dao.LprodDaoImpl;
import kr.or.ddit.lprod.vo.LprodVo;

public class IBuyerDaoImpl implements IBuyerDao{
	
	private SqlMapClient client;
	private static IBuyerDaoImpl dao;
	
	public static IBuyerDao getInstance() {
		if( dao == null ) dao = new IBuyerDaoImpl();
		return dao;
	}

	private IBuyerDaoImpl() {
		client = SqlMapClientFactory.getSqlMapClient();
	}
	
	@Override
	public List<BuyerVo> selectAll() {
		List<BuyerVo> list = null;
		try {
			list = client.queryForList("buyer.selectAll");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public BuyerVo selectBuyer( String id ) {
		BuyerVo list = null;
		try {
			list = (BuyerVo)client.queryForObject("buyer.selectBuyer", id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}


	
	

}
