package kr.or.ddit.zip.Service;

import java.util.List;

import kr.or.ddit.member.dao.MemberDaolmpl;
import kr.or.ddit.member.service.MemberServicelmpl;
import kr.or.ddit.member.vo.ZipVo;
import kr.or.ddit.zip.Dao.IZipDao;
import kr.or.ddit.zip.Dao.ZipDaoImpl;
import kr.or.ddit.zip.controller.ZipServlet;

public class ZipServiceImpl implements IZipService {

	private IZipDao dao;
	private static IZipService service;
	
	private ZipServiceImpl() {
		dao = ZipDaoImpl.getInstance();
	}
	
	public static IZipService getInstance() {
		if(service == null) service = new ZipServiceImpl();
		return service;
	}
	
	
	@Override
	public List<String> sido() {
		return dao.sido();
	}

	@Override
	public List<String> gugun(String sido) {
		return dao.gugun(sido);
	}

	@Override
	public List<String> dong(ZipVo dong) {
		// TODO Auto-generated method stub
		return dao.dong(dong);
	}

	@Override
	public List<ZipVo> zipall(ZipVo zipall) {
		// TODO Auto-generated method stub
		return dao.zipall(zipall);
	}

}
