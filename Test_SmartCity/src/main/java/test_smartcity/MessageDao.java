package test_smartcity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MessageDao {
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project", "root", "");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}

	public static int save(Message msg, String schoolName,String catName) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(
					"insert into messages(User_name,User_email,User_phone,Catagory,Name_ctgry,Text_msg) values(?,?,?,?,?,?)");
			//System.out.println("School " + schoolName);
			ps.setString(1, msg.getName());
			ps.setString(2, msg.getEmail());
			ps.setLong(3, msg.getPhoneNumber());

			ps.setString(4, catName);
			ps.setString(5, schoolName);
			ps.setString(6, msg.getTextMsg());

			status = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public static List<Message> getAllMessages() {

		List<Message> list = new ArrayList<Message>();
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from messages");

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Message msg = new Message();

				msg.setMsg_id(rs.getInt("Msg_id"));
				msg.setName(rs.getString("User_name"));
				msg.setEmail(rs.getString("User_email"));
				msg.setPhoneNumber(rs.getLong("User_phone"));
				msg.setCatogory(rs.getString("Catagory"));
				msg.setNameCtgry(rs.getString("Name_ctgry"));
				msg.setTextMsg(rs.getString("Text_msg"));

				list.add(msg);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

}
