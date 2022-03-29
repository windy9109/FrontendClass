package kr.or.ddit.member.service;

import java.util.List;

import kr.or.ddit.member.vo.MemberVo;

public interface IMemberService {

	public List<MemberVo> selectAll();
	
}
