package com.model;

import java.util.List;

public class Admin {	
		private int adminId;
		private String email;
		private String password;
		//private List<Result> results;
		public int getAdminId() {
			return adminId;
		}
		public void setAdminId(int adminId) {
			this.adminId = adminId;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
//		public List<Result> getResults() {
//			return results;
//		}
//		public void setResults(List<Result> results) {
//			this.results = results;
//		}
		public Admin(int adminId, String email, String password) {
			super();
			this.adminId = adminId;
			this.email = email;
			this.password = password;
			//this.results = results;
		}
		
		

		

}
