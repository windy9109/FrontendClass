package kr.or.ddit.member.service;

import java.util.List;

import kr.or.ddit.member.dao.IMemberDao;
import kr.or.ddit.member.dao.MemberDaolmpl;
import kr.or.ddit.member.vo.MemberVo;

//dao에 접근 - dao객체가 필요
//service객체 생성 리턴 - controller가 사용

public class MemberServicelmpl implements IMemberService {
	
	
	private IMemberDao dao;
	private static IMemberService service;
	
	private MemberServicelmpl() {
		dao = MemberDaolmpl.getInstance();
		
	}
	
	public static IMemberService getInstance() {
		if(service == null) service = new MemberServicelmpl();
		return service;
		
	}
	

	@Override
	public List<MemberVo> selectAll() {
//		List<MemberVo> list = null;
//		list = dao.selectAll();
//		return list;
		
		return dao.selectAll();
	}

	
	
}
