package dao;
import java.sql.*;

import javax.servlet.http.HttpServletRequest;

public class Result {
	public static ResultSet form1(HttpServletRequest request){
		ResultSet rs=null;
		try {
		String pid=request.getParameter("userid");
		String pname=request.getParameter("username");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?user=root&password=root&useUnicode=true&characterEncoding=GB2312");
		String sql="select userid,username from customer where userid=? and username=?";
		PreparedStatement pre=con.prepareStatement(sql);
		pre.setString(1,pid);
		pre.setString(2,pname);
		rs=pre.executeQuery();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	public static ResultSet form2(HttpServletRequest request){
		ResultSet rs=null;
		try {
			String a=request.getParameter("adName");
			String b=request.getParameter("adPwd");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?user=root&password=root&useUnicode=true&characterEncoding=GB2312");
			String sql="select * from administrator where adName=? and adPwd=?";
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setString(1,a);
			pre.setString(2,b);
			rs=pre.executeQuery();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	public static ResultSet form3(HttpServletRequest request){
		ResultSet rs=null;
		try {
			String a=request.getParameter("pname");
			String b=request.getParameter("passwd");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?user=root&password=root&useUnicode=true&characterEncoding=GB2312");
			String sql="select pname,passwd from seller where pname=? and passwd=?";
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setString(1,a);
			pre.setString(2,b);
			rs=pre.executeQuery();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	

	public static ResultSet getModify(HttpServletRequest request){
		ResultSet rs=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");		
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?user=root&password=root&useUnicode=true&characterEncoding=GB2312");
			String sql="select * from production";
			
//			String chuanzhi=request.getParameter("pageye");
//			//String chuanzhi="1";
//			int curpage=Integer.parseInt(chuanzhi);
//			sql=Fenye.fenyemethod(curpage, "production", 18, 6);
//			System.out.print(sql);
			PreparedStatement psmt =conn.prepareStatement(sql);
			rs= psmt.executeQuery();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	public static ResultSet getModify1(HttpServletRequest request){
		ResultSet rs=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");		
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?user=root&password=root&useUnicode=true&characterEncoding=GB2312");
			//String sql="select * from production";
			
			String chuanzhi=request.getParameter("pageye");
			//String chuanzhi="1";
			int curpage=Integer.parseInt(chuanzhi);
			String sql=Fenye.fenyemethod(curpage, "production", 18, 12);
			System.out.print(sql);
			PreparedStatement psmt =conn.prepareStatement(sql);
			rs= psmt.executeQuery();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	
	public static int getModifyDelete(HttpServletRequest request){
		int record = 0;
	String pid= request.getParameter("pid");
	 if(pid==null||pid.equals(""))
	 {

	 }
	 else{
		 try {
	 
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?user=root&password=root&useUnicode=true&characterEncoding=GB2312");
		String sql="delete from production where pid=?";
		PreparedStatement psmt =conn.prepareStatement(sql);
		psmt.setString(1,pid);
		record=psmt.executeUpdate();
		 } catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
			return record;
			
		} 
	
	public static int getModifyUpdate(HttpServletRequest request){
		int record = 0;
		String pid= request.getParameter("pid");
		String pname=request.getParameter("pname");
		String pprice=request.getParameter("pprice");
		String pmount=request.getParameter("pmount");
		String pseller=request.getParameter("pseller");
		String mailcost=request.getParameter("mailcost");

		 if(pid==null||pid.equals(""))
		 {

		 }
		 else{
			 try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?user=root&password=root&useUnicode=true&characterEncoding=GB2312");
			String sql="update production set pname=?,pprice=?,pmount=?,pseller=?,mailcost=? where pid=?";
			PreparedStatement psmt =conn.prepareStatement(sql);
			psmt.setString(6,pid);
			psmt.setString(1,pname);
			psmt.setString(2,pprice);
			psmt.setString(3,pmount);
			psmt.setString(4,pseller);
			psmt.setString(5,mailcost);	
			record=psmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
		return record;	
	}
	
	//delete
	
	public static int deleteMethod(HttpServletRequest request){
		int rtn = 0;
		String chk[]= request.getParameterValues("pid");
try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?user=root&password=root&useUnicode=true&characterEncoding=GB2312");
		String sql="delete from production where pid=?";
		PreparedStatement psmt =conn.prepareStatement(sql);
		for(int i=0;i<chk.length;i++){
			psmt.setString(1,chk[i]);
			rtn=psmt.executeUpdate();
		}
	} catch (ClassNotFoundException e) {
					e.printStackTrace();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			
		return rtn;	
	}
	
	public static int admindelteform(HttpServletRequest request){
		int rtn = 0;
		String chk[]= request.getParameterValues("pid");
try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?user=root&password=root&useUnicode=true&characterEncoding=GB2312");
		String sql="delete from production where pid=?";
		PreparedStatement psmt =conn.prepareStatement(sql);
		for(int i=0;i<chk.length;i++){
			psmt.setString(1,chk[i]);
			rtn=psmt.executeUpdate();
		}
	} catch (ClassNotFoundException e) {
					e.printStackTrace();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			
		return rtn;	
	}
	
	public static int admininsertform(HttpServletRequest request){
		int rtn = 0;
		String pid= request.getParameter("pid");
		String pname=request.getParameter("pname");
		String pprice=request.getParameter("pprice");
		String pmount=request.getParameter("pmount");
		String pseller=request.getParameter("pseller");
		String mailcost=request.getParameter("mailcost");
		 if(pid==null||pid.equals(""))
		 {}
		 else{
			 try {
				 Class.forName("com.mysql.jdbc.Driver");		
				 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?user=root&password=root&useUnicode=true&characterEncoding=GB2312");
				 String sql="insert into production values(?,?,?,?,?,?)";
				 PreparedStatement psmt =conn.prepareStatement(sql);
				 psmt.setString(1,pid);
				 psmt.setString(2,pname);
				 psmt.setString(3,pprice);
				 psmt.setString(4,pmount);
				 psmt.setString(5,pseller);
				 psmt.setString(6,mailcost);
				 rtn=psmt.executeUpdate();
			 } catch (ClassNotFoundException e) {
				 e.printStackTrace();
			 } catch (SQLException e) {
				 e.printStackTrace();
			 }
		 }
	return rtn;	
}
	
	public static int addShopCar(HttpServletRequest request){
		int rtn = 0;
		String chk[]=request.getParameterValues("chk");
		if(chk==null||chk.equals(""))
		{}
		else{
			try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?user=root&password=root&useUnicode=true&characterEncoding=GB2312");
			String sql="insert into shop_car values(?)";
			PreparedStatement psmt =conn.prepareStatement(sql);
			for(int i=0;i<chk.length;i++)
			{
				psmt.setString(1,chk[i]);	
				psmt.executeUpdate();
		
			}
			 } catch (ClassNotFoundException e) {
				 e.printStackTrace();
			 } catch (SQLException e) {
				 e.printStackTrace();
			 }
		} 
		return rtn;	
	}
}
