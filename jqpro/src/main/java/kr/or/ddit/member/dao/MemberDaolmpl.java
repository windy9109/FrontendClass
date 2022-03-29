package kr.or.ddit.member.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.ibatis.config.SqlMapClientFactory;
import kr.or.ddit.member.vo.MemberVo;

//mapper접근 - SqlMapClient객체가 필요
//dao클래스 객체 생성 - 리턴 - service에서 사용


public class MemberDaolmpl implements IMemberDao {

	private SqlMapClient client;
	private static IMemberDao dao;
	
	private MemberDaolmpl() {
		client = SqlMapClientFactory.getSqlMapClient();
	}
	
	public static IMemberDao getInstance() {
		if( dao == null ) dao = new MemberDaolmpl();
		return dao;
	}
	
	@Override
	public List<MemberVo> selectAll() {
		List<MemberVo> list = null;
		try {
			list = client.queryForList("member.selectAll");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

}



