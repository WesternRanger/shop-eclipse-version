package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

public class register {
	public static int getModifyInsert(HttpServletRequest request){
		int record = 0;
		String pid= request.getParameter("userid");
		String pname=request.getParameter("username");
		String pprice=request.getParameter("truename");
		String pmount=request.getParameter("identi");
		String pseller=request.getParameter("tel");
		String mailcost=request.getParameter("mob");
		String adress=request.getParameter("adress");
		String mail=request.getParameter("mail");
		String mark=request.getParameter("mark");
		String xindu=request.getParameter("xindu");
		 if(pid==null||pid.equals(""))
		 {

		 }
		 else{
		try {
			Class.forName("com.mysql.jdbc.Driver");		
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?user=root&password=root&useUnicode=true&characterEncoding=GB2312");
			String sql="insert into customer values(?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement psmt =conn.prepareStatement(sql);
			psmt.setString(1,pid);
			psmt.setString(2,pname);
			psmt.setString(3,pprice);
			psmt.setString(4,pmount);
			psmt.setString(5,pseller);
			psmt.setString(6,mailcost);
			psmt.setString(7,adress);
			psmt.setString(8,mail);
			psmt.setString(9,mark);
			psmt.setString(10,xindu);
		    record=psmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
		return record;
		
	}
	
	public static int getModifyInsert1(HttpServletRequest request){
		int record = 0;
		String pid= request.getParameter("passwd");
		String pname=request.getParameter("confirm");
		String pprice=request.getParameter("pname");
		String pmount=request.getParameter("paddr");
		String pcost=request.getParameter("mainsell");
		String padd=request.getParameter("sellerxindu");
		String plost=request.getParameter("frepre");
		String pall=request.getParameter("fCerti");
		if(pid==null||pid.equals(""))
		 {

		 }
		 else{
			 try {
			 Class.forName("com.mysql.jdbc.Driver");

				Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?user=root&password=root&useUnicode=true&characterEncoding=GB2312");
				String sql="insert into seller values(?,?,?,?,?,?,?,?)";
				PreparedStatement psmt =conn.prepareStatement(sql);
				psmt.setString(1,pid);
				psmt.setString(2,pname);
				psmt.setString(3,pprice);
				psmt.setString(4,pmount);
				psmt.setString(5,pcost);
				psmt.setString(6,padd);
				psmt.setString(7,plost);
				psmt.setString(8,pall);

				record=psmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
		return record;
		
	}
}
