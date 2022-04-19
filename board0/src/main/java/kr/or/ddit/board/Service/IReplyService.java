package kr.or.ddit.board.Service;

import java.util.List;

import kr.or.ddit.VO.ReplyVo;

public interface IReplyService {
	
	//댓글수정 - cont, redate
	public int updateReply(ReplyVo vo);
	
	//댓글삭제
	public int deleteReply(int reply);
	
	//댓글리스트
	public List<ReplyVo> replyList(int bonum);
	
	//댓글저장
	public int insertReply(ReplyVo vo);

}
