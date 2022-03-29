package kr.or.ddit.member.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.member.vo.MemberVo;

public interface IMemberDao {

	
	public List<MemberVo> selectAll();
	
}
