package kr.or.ddit.prod.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.ibatis.config.SqlMapClientFactory;
import kr.or.ddit.lprod.dao.LprodDao;
import kr.or.ddit.lprod.dao.LprodDaoImpl;
import kr.or.ddit.lprod.service.LprodService;
import kr.or.ddit.lprod.vo.LprodVo;
import kr.or.ddit.prod.service.IProdService;
import kr.or.ddit.prod.service.IProdServiceImpl;
import kr.or.ddit.prod.vo.ProdVo;

public class IProdDaoImpl implements IProdDao {

	private SqlMapClient client;
	private static IProdDaoImpl dao;
	
	private IProdDaoImpl() {
		client = SqlMapClientFactory.getSqlMapClient();
	}
	
	public static IProdDao getInstance() {
		if( dao == null ) dao = new IProdDaoImpl();
		return dao;
	}
	

	@Override
	public List<ProdVo> selectAll(  String id  ) {
		List<ProdVo> list = null;
		try {
			list = client.queryForList("prod.selectAll", id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	
	@Override
	public List<ProdVo> selectProd(  String id  ) {
		List<ProdVo> list = null;
		try {
			list = client.queryForList("prod.selectProd", id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	
}
