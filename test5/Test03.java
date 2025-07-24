package test5;

import java.util.Scanner;

/*
 * 날짜 : 2025/07/23
 * 이름 : 이준우
 * 내용 : 자바 예외처리 연습문제 
 *  
 */

class LoginException ??? {
	public LoginException(String msg) {
		super(msg);
	}
}

public class Test03 {
	
	public static void main(String[] args) {
	
		String userld = "a101";
		String userPw = "abc1234";
		
		try {
			Scanner sc = new Scanner(System.in);
			
			System.out.print("아이디 : ");
			String inputId = sc.nextLine();
			
			System.out.print("비밀번호 : ");
			String inputPw = sc.nextLine();
			
			if(!inputld.??) {
				throw new LoginException("아이디 틀림!");				
			}else if(!inputpw.??) {
				throw new LoginException("아이디 틀림");
			}else {
				System.out.println("로그인 성공!");
			}
		}catch (??){
			System.out.println(e.getMessage());
		}
		
	}
}
