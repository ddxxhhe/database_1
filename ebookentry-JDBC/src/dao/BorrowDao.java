package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import entity.Booking;
import entity.BorrowBook;

public class BorrowDao extends BaseDao{
	
	public List<BorrowBook> search(String sql,Object...params){
		List<BorrowBook> list =new ArrayList<BorrowBook>();
		Connection conn=this.getconn();
		PreparedStatement pst=null;
		ResultSet rs=null;
		try {
			pst=this.prepareStatement(conn, sql, params);
			rs=pst.executeQuery();
			while(rs.next()){
				BorrowBook wor=new BorrowBook();
				wor.setId(rs.getInt(1));
				wor.setName(rs.getString(2));
				list.add(wor);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			closeAll(conn, pst, rs);
		}
		return list;
	}
	
	public int insert(BorrowBook t){
		String str="INSERT INTO `borrow`(name,borrowDate) VALUE(?,?)";
		return executeUpdate(str, new Object[]{t.getName(),t.getBorrowDate()});
	}
}
