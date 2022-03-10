package kr.or.ddit.basic.stream;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/*
 * 문제) D드라이브의 d_other폴더에 있는 '펭귄.jpg'파일을 d드라이브의 d_other폴더에 있는
 * '연습용' 폴더에 '펭귄복사본.jpg'파일로 복사하는 프로그램을 작성하시오. 
 * 
*/

public class FileCopy {

	public static void main(String[] args) {
		
		// 1. 원본 File, 복사할 File 준비
		File file = new File("d:/d_other/펭귄.jpg");
		File newFile = new File("d:/d_other/펭귄_복사본.jpg");
		
		try {
			// 2. FileInputStream, FileOutputStream 준비
			FileInputStream input = new FileInputStream(file);
			FileOutputStream output = new FileOutputStream(newFile);
			// 3. 한번에 read하고, write할 사이즈 지정
			byte[] buf = new byte[1024];
			// 4. buf 사이즈만큼 input에서 데이터를 읽어서, output에 쓴다.
			int readData;
			
			while ((readData = input.read(buf)) > 0) {
				output.write(buf, 0, readData);
				}
				// 5. Stream close
				input.close();
				output.close();

			
		} catch (IOException e) {
			// TODO: handle exception
		}

			
			

	}

}
