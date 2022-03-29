package kr.or.ddit.lprod.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.ibatis.config.SqlMapClientFactory;
import kr.or.ddit.lprod.vo.LprodVo;

public class LprodDaoImpl implements LprodDao{

	private SqlMapClient client;
	private static LprodDaoImpl dao;
	
	private LprodDaoImpl() {
		client = SqlMapClientFactory.getSqlMapClient();
	}
	
	public static LprodDao getInstance() {
		if( dao == null ) dao = new LprodDaoImpl();
		return dao;
	}
	
	@Override
	public List<LprodVo> selectALL() {
		List<LprodVo> list = null;
		try {
			list = client.queryForList("lprod.selectAll");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

}
