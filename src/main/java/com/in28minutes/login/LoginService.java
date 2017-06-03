package com.in28minutes.login;

public class LoginService {
	public boolean isUserValid(String user, String password){
		if(user.equals("Admin") && password.equals("1234")){
			return true;
		}
		
		return false;
	}
	
}
