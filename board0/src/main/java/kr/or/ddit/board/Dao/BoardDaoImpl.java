package kr.or.ddit.board.Dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.VO.BoardVo;
import kr.or.ddit.ibatis.config.SqlMapClientFactory;

public class BoardDaoImpl implements IBoardDao{

	private SqlMapClient client;
	private static IBoardDao dao;
	
	//생성자 - client 객체 얻어오기
	private BoardDaoImpl() {
		client = SqlMapClientFactory.getSqlMapClient();
	}
	
	//getInstance()메소드 - dao객체 생성하고 리턴
	public static IBoardDao getInstance() {
		if(dao== null) dao = new BoardDaoImpl();
		return dao;
	}
	
	
	
	@Override
	public List<BoardVo> selectList(Map<String, Integer> map) throws SQLException {
//		List<BoardVo> list = null;
//		
//		list = client.queryForList("board.selectList",map);
//		
//		return list;
		
		return client.queryForList("board.selectList",map);
		
	}

	@Override
	public int totalCount() throws SQLException {
		//결과가 하나면 queryForObject
		return (int)client.queryForObject("board.totalCount");
	}

	@Override
	public Map<String, Object> getPageInfo(int page) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}



}
