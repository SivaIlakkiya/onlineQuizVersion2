package web.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.Student;
import com.model.Teacher;


public class AdminService {

	
	public boolean checkCredentials(String username, String password) {
		boolean st =false;
      try {
		Connection con=DbConnection.getConnection();
		PreparedStatement  ps = con.prepareStatement("SELECT * FROM admin WHERE Email=? AND Password=?");
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


	public int update(String username, String currentpassword, String newpassword) {
		int result = 0;
		try {
			Connection con=DbConnection.getConnection();
			PreparedStatement  ps = con.prepareStatement("update admin set Password=? WHERE Email=? AND Password=?");
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
	
	public static int deleteTeacher(int teacherid)
	{
		 int status=0;  
		    try{  
		    	Connection con=DbConnection.getConnection(); 
		        PreparedStatement ps=con.prepareStatement("delete from Teacher where Teacherid=?");  
		        ps.setInt(1,teacherid);  
		        status=ps.executeUpdate();  
		        con.close();
		    }catch(Exception e)
		    {
		    	System.out.println(e);
		    }  
		  
		    return status;  
	}
	
	public int insertTeacher(String tname,String temail,String tpass,String tphone) {
		int result = 0;
		try {
			Connection con=DbConnection.getConnection();
			PreparedStatement  ps = con.prepareStatement("insert into teacher (Teachername,Email,Password,Phonenumber) values(?,?,?,?)");
			ps.setString(1, tname);
	        ps.setString(2, temail);
	        ps.setString(3, tpass);
	        ps.setString(4, tphone);
	       result =ps.executeUpdate();
	      con.close();
	  }
	  catch(Exception e) {
	      e.printStackTrace();
	  }
	  return result;
		
	}
	
	public int updateTeacher(int etid,String etname, String etemail,String etpass,String etphone) {
		int r = 0;
		try {
			Connection con=DbConnection.getConnection();
			PreparedStatement  ps = con.prepareStatement("update teacher set Teachername=?,Email=?,Password=?,Phonenumber=? where Teacherid=?");
			ps.setString(1, etname);
	        ps.setString(2, etemail);
	        ps.setString(3, etpass);
	        ps.setString(4, etphone);
	        ps.setInt(5, etid);
	        r =ps.executeUpdate();
	      con.close();
	  }
	  catch(Exception e) {
	      e.printStackTrace();
	  }
	  return r;
	}
	
public static Teacher getTeacherById(int teacherid) {
		
		Teacher u=null;
		try{
			Connection con=DbConnection.getConnection();
			PreparedStatement ps=con.prepareStatement("Select * from teacher where teacherid=?");
			ps.setInt(1, teacherid);
			ResultSet rs=ps.executeQuery(); 
			if(rs.next())
				u=new Teacher();  
			u.setTeacherid(rs.getInt("teacherid"));
            u.setTeachername(rs.getString("teachername"));  
            u.setEmail(rs.getString("email")); 
            u.setPassword(rs.getString("password")); 
            u.setPhonenumber(rs.getString("phonenumber"));
			
			con.close();
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return u;
	}
		
	
	
	public static List<Teacher> getAllTeachers() {
		ArrayList<Teacher> list=new ArrayList<>();
		try{
		Connection con=DbConnection.getConnection();
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from teacher");	
		 while(rs.next()){  
	            Teacher u=new Teacher();
	            u.setTeacherid(rs.getInt("teacherid"));
	            u.setTeachername(rs.getString("teachername"));  
	            u.setEmail(rs.getString("email")); 
	            u.setPassword(rs.getString("password")); 
	            u.setPhonenumber(rs.getString("phonenumber"));
	            list.add(u);  
	        }  
		stmt.close();
		con.close();
		
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}
	
	public static List<Student> getAllStudents() {
		ArrayList<Student> list=new ArrayList<>();
		try{
		Connection con=DbConnection.getConnection();
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from student");	
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


}
