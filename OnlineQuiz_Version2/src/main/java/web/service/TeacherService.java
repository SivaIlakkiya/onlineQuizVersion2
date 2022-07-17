package web.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.Student;
import com.model.Teacher;

public class TeacherService {
	
	public boolean checkCredentials(String username, String password) {
		boolean st =false;
      try {
		Connection con=DbConnection.getConnection();
		PreparedStatement  ps = con.prepareStatement("SELECT * FROM teacher WHERE Email=? AND Password=?");
		ps.setString(1, username);
      ps.setString(2, password);
      ResultSet rs =ps.executeQuery();
      st = rs.next();
  }
  catch(Exception e) {
      e.printStackTrace();
  }
  return st;
	}
	
	public int updatepass(String username, String currentpassword, String newpassword) {
		int result = 0;
		try {
			Connection con=DbConnection.getConnection();
			PreparedStatement  ps = con.prepareStatement("update teacher set Password=? WHERE Email=? AND Password=?");
			ps.setString(2, username);
	      ps.setString(3, currentpassword);
	      ps.setString(1, newpassword);
	       result =ps.executeUpdate();
	      con.close();
	  }
	  catch(Exception e) {
	      e.printStackTrace();
	  }
	  return result;
		
	}
	
public static Student getStudentById(int studentid) {
		
		Student u=null;
		try{
			Connection con=DbConnection.getConnection();
			PreparedStatement ps=con.prepareStatement("Select * from student where Studentid=?");
			ps.setInt(1, studentid);
			ResultSet rs=ps.executeQuery(); 
			if(rs.next())
				u=new Student();  
			u.setStudentid(rs.getInt("studentid"));
			u.setStudentname(rs.getString("studentname"));
			u.setEmail(rs.getString("email"));
			u.setAge(rs.getInt("age"));
			u.setPassword(rs.getString("password"));
			con.close();
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return u;
	}

public int updateStudent(int epid,String epname, String epemail,int epage,String eppass) {
	int r = 0;
	try {
		Connection con=DbConnection.getConnection();
		PreparedStatement  ps = con.prepareStatement("update student set Studentname=?,Email=?,Age=?,Password=? where Studentid=?");
		ps.setString(1, epname);
        ps.setString(2, epemail);
        ps.setInt(3, epage);
        ps.setString(4, eppass);
        ps.setInt(5, epid);
        r =ps.executeUpdate();
      con.close();
  }
  catch(Exception e) {
      e.printStackTrace();
  }
  return r;
}
	
	public static List<Student> getTests(int teacherid) {
		ArrayList<Student> list=new ArrayList<>();
		try{
		Connection con=DbConnection.getConnection();
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from teacher where teacherid=?");	
		 while(rs.next()){  
	            Student s=new Student();
	            s.setStudentid(rs.getInt("studentid"));
	            s.setStudentname(rs.getString("studentname"));
	            s.setEmail(rs.getString("email"));
	            s.setAge(rs.getInt("age"));
	            s.setPassword(rs.getString("password"));
	            list.add(s);  
	        }  
		stmt.close();
		con.close();
		
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}
	
	public static int deleteStudent(int studentid)
	{
		 int status=0;  
		    try{  
		    	Connection con=DbConnection.getConnection(); 
		        PreparedStatement ps=con.prepareStatement("delete from Student where Studentid=?");  
		        ps.setInt(1,studentid);  
		        status=ps.executeUpdate();  
		        con.close();
		    }catch(Exception e)
		    {
		    	System.out.println(e);
		    }  
		  
		    return status;  
	}


}
