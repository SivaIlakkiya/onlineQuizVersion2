package web.service;

import java.util.List;

import com.model.Teacher;

public interface Admincrud {
	
	boolean checkCredentials(String username, String password);
	int update(String username,String currentpassword,String newpassword);
	List<Teacher> getAllTeachers();

}
