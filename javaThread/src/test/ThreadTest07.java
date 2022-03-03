package test;

import javax.swing.JOptionPane;

public class ThreadTest07 {

	public static void main(String[] args) {
		Thread th1 = new DataInput3();
		Thread th2 = new CountDown3();
		th1.start();
		th2.start();
			
	}

}




class DataInput3 extends Thread{
	public static boolean inputCheck= false;
	
	@Override
	public void run() {
		String str = JOptionPane.showInputDialog("1.가위 2.바위 3.보");
		inputCheck = true;
		int str2 = Integer.parseInt(str);
		int random = (int)(Math.random()*(3-1+1)+1);
		
		
		if(str2 == random) {
			System.out.println("비겼습니다.");
		}
		if(str2 == 1 && random == 2 || str2 == 2 && random == 3 || str2 == 3 && random == 1){
			System.out.println("당신이 졌습니다.");
		}
		if(str2 == 1 && random == 3 || str2 == 2 && random == 1 || str2 == 3 && random == 2) {
			System.out.println("당신이 이겼습니다.");
		}
		
		System.out.println("- 결 과 -");
		switch(random) {
		case 1: System.out.println("컴퓨터: 가위"); break;
		case 2: System.out.println("컴퓨터: 바위"); break;
		case 3: System.out.println("컴퓨터: 보"); break;
		default: System.out.println("잘못입력했습니다.");
		}
		
		
		switch(str2) {
		case 1: System.out.println("당신: 가위"); break;
		case 2: System.out.println("당신: 바위"); break;
		case 3: System.out.println("당신: 보"); break;
		default: System.out.println("잘못입력했습니다.");
		}
		
		
	}
	
}



//카운트다운
class CountDown3 extends Thread{
	
	@Override
	public void run() {
		for(int i=5; i>=1; i--) {
				System.out.println(i);
			
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				// TODO: handle exception
			}
			if( DataInput3.inputCheck == true) { //입력받는다면 멈춰라
				return;
			}
			if( i == 1) {
				System.out.println("시간초과로 졌습니다.");
			}
		}
		
		System.exit(0);
	}
}









