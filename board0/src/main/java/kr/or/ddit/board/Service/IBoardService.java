package kr.or.ddit.board.Service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.VO.BoardVo;

public interface IBoardService {
	
	//리스트출력
	public List<BoardVo> selectList( Map<String, Object> map);

	//전체글 갯수 가져오기
	public int totalCount(Map<String,String> map);
	
	//페이지 정보 구하기
	public Map<String, Object> getPageInfo(int page, String type, String word);
	
	//글삭제
	public int deleteBorad(int num);
	
	
}
