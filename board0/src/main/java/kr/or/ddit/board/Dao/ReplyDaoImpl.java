package kr.or.ddit.board.Dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.VO.ReplyVo;
import kr.or.ddit.ibatis.config.SqlMapClientFactory;

public class ReplyDaoImpl implements IReplyDao {
	
	
	private SqlMapClient client;
	private static IReplyDao dao;
	
	
	//생성자 - client 객체 얻어오기
	private ReplyDaoImpl() {
		client = SqlMapClientFactory.getSqlMapClient();
	}
	
	//getInstance()메소드 - dao객체 생성하고 리턴
	public static IReplyDao getInstance() {
		if(dao== null) dao = new ReplyDaoImpl();
		return dao;
	}
	
	
	
	
	
	
	@Override
	public int updateReply(ReplyVo vo) throws SQLException {
		return (int)client.update("reply.updateReply", vo);
	}
	@Override
	public int deleteReply(int reply) throws SQLException {
		return (int)client.delete("reply.replyDelete", reply);
	}
	@Override
	public List<ReplyVo> replyList(int bonum) throws SQLException {
		return client.queryForList("reply.replyList", bonum);
	}
	@Override
	public int insertReply(ReplyVo vo) throws SQLException {
		return (int)client.insert("reply.insertReply", vo);
	}
	
	
	
	

}
