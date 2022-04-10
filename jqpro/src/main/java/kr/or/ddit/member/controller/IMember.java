package kr.or.ddit.member.controller;

import java.util.List;

import kr.or.ddit.member.vo.MemberVo;

public interface IMember {
	
	public List<MemberVo> selectAll();
	

}
