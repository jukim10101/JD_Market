package JDM_package;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

import JDM_package.ItemDTO;

public class ItemMgr {
	private static String serverIP = "localhost";
	private static String strSID = "JDM? serverTimezone = UTC";
	private static String portNum = "3306";
	private static String url = "jdbc:mysql://"+serverIP+":"+portNum+"/"+strSID;
	//jdbc:mysql://localhost:3306/JDM
	private static String user = "root";
	private static String pass = "MySQL10!";
	
	private static Connection conn = null;
	private static PreparedStatement pstmt = null;
	private static ResultSet rs;
	private static DataSource ds;
	
	public ItemMgr() {
		try {
			Context context = new InitialContext();
			ds = (DataSource)context.lookup("java:comp/env/jdbc_maria");
		}catch (Exception e) {
			System.out.println("connect err:"+e);
		}
	}
	
	public static ArrayList<ItemDTO> getItemAll() {
		ArrayList<ItemDTO> list = new ArrayList<>();
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			conn=DriverManager.getConnection(url,user,pass);
			String query = "select * from ITEM order by Item_no desc;";
			pstmt = conn.prepareStatement(query);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				ItemDTO dto = new ItemDTO();
				dto.setItem_Name(rs.getString("Item_name"));
				dto.setProduce_date(rs.getDate("Produce_date"));
				dto.setOrigin(rs.getString("Origin"));
				dto.setPrice(rs.getInt("Price"));
				dto.setItem_no(rs.getInt("Item_no"));
				dto.setImporter(rs.getString("Importer"));
				dto.setExpiry_date(rs.getDate("Expiry_date"));
				dto.setCG_number(rs.getInt("CG_number"));
				list.add(dto);
			}
		} catch(Exception e) {
			System.out.println("ItemDTO erro:"+e);
		}finally {
			try {
				if(rs != null) rs.close();
				if( pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch( Exception e2) {
				
			}
		}
		
		return list;
	}
	
	/*public boolean insertProduct(HttpServletRequest request) {
		boolean bool = false;
		String ImgDir = "";
		try {
			MultipartRequest multi = 
		}
	}*/
}
