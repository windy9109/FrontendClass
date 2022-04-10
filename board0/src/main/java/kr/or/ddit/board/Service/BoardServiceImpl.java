package kr.or.ddit.board.Service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.VO.BoardVo;
import kr.or.ddit.board.Dao.BoardDaoImpl;
import kr.or.ddit.board.Dao.IBoardDao;

public class BoardServiceImpl implements IBoardService{

	private IBoardDao dao;
	private static IBoardService service;
	
	//생성자 - dao객체 얻기
	private BoardServiceImpl() {
		dao = BoardDaoImpl.getInstance();
	}
	
	//getInstance()메소드 service객체 생성, 리턴
	public static IBoardService getInstance() {
		if(service== null) service = new BoardServiceImpl();
		return service;
	}
	
	
	@Override
	public List<BoardVo> selectList(Map<String, Integer> map) {
		List<BoardVo> list = null;

		try {
			list = dao.selectList(map);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public int totalCount() {
		int count = 0;
		try {
			count = dao.totalCount();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
		
	}

	@Override
	public Map<String, Object> getPageInfo(int page) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		//전체 글갯수 
		int count = this.totalCount();
		
		//한페이지당 출력할 글 갯수
		int perlist = 3;
		
		//전체 페이지 수
		int totalPage = (int)Math.ceil((double)count / perlist);
		
		//start //end 
		int start = (page -1)*perlist +1;
		int end = start + perlist - 1;
		if(end > count) end = count;
		
		map.put("start", start);
		map.put("end", end);
		
		
		
		
		return map;
	}


	

}
