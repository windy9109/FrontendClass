package kr.or.ddit.zip.Dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.ibatis.config.SqlMapClientFactory;
import kr.or.ddit.member.vo.ZipVo;
import kr.or.ddit.prod.dao.IProdDaoImpl;
import kr.or.ddit.prod.vo.ProdVo;

public class ZipDaoImpl implements IZipDao{

	private SqlMapClient client;
	private static IZipDao dao;
	
	private ZipDaoImpl() {
		client = SqlMapClientFactory.getSqlMapClient();
	}
	
	
	public static IZipDao getInstance() {
		if( dao == null ) dao = new ZipDaoImpl();
		return dao;
	}
	
	
	@Override
	public List<String> sido() {
		List<String> list = null;
		try {
			list = client.queryForList("zip.zipsido");
		} catch (SQLException e) {
			// TODO: handle exception
		}
		return list;
	}

	
	
	@Override
	public List<String> gugun(String sido) {
		List<String> list = null;
		try {
			list = client.queryForList("zip.zipgugun", sido);
		} catch (SQLException e) {
			// TODO: handle exception
		}
		return list;
	}

	
	
	@Override
	public List<String> dong(ZipVo dong) {
		List<String> list = null;
		try {
			list = client.queryForList("zip.zipdong", dong );
		} catch (SQLException e) {
			// TODO: handle exception
		}
		return list;
	}
	
	

	@Override
	public List<ZipVo> zipall(ZipVo zipall) {
		List<ZipVo> list = null;
		try {
			list = client.queryForList("zip.zipall", zipall);
		} catch (SQLException e) {
			// TODO: handle exception
		}
		return list;
	}
	
	

}
