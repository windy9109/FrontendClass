package kr.or.ddit.zip.Service;

import java.util.List;

import kr.or.ddit.member.vo.ZipVo;

public interface IZipService {
	
	public List<String> sido();
	
	public List<String> gugun( String sido );
	
	public List<String> dong ( ZipVo dong );
	
	public List<ZipVo> zipall ( ZipVo zipall );


	

}
