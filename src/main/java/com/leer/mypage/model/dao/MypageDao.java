package com.leer.mypage.model.dao;

import static com.leer.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.leer.member.model.vo.Member;
import com.leer.mypage.model.vo.Cart;
import com.leer.mypage.model.vo.Point;
import com.leer.product.model.vo.Product;
import com.leer.review.model.dao.ReviewDao;

public class MypageDao {
	
	private Properties prop = new Properties();
	
	public MypageDao() {
		
		String filePath = MypageDao.class.getResource("/db/sql/mypage-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	public int insertProductCart(Connection conn, Cart c) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertProductCart");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, c.getMemNo());
			pstmt.setString(2, c.getpCode());
			pstmt.setInt(3, c.getAmount());
			pstmt.setInt(4, c.getOrCycle());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
		
	}
	
	public ArrayList<Cart> selectCartList(Connection conn, int memNo) {
		
		ArrayList<Cart> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectCartList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Cart( rset.getInt("cart_no"),
								   rset.getInt("mem_no"),
								   rset.getString("p_code"),
								   rset.getString("image_url1"),
								   rset.getInt("amount"),
								   rset.getInt("or_cycle"),
								   rset.getString("p_name"),
								   rset.getInt("price"),
								   rset.getInt("deli_fee")
									));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
			
		}
		return list;
	}
	
	public int deleteCart(Connection conn, String cartNo) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteCart");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cartNo);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
		
	}
	
	public ArrayList<Member> selectOrderDev(Connection conn,int memNo){
		
		ArrayList<Member> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectOrderDev");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Member(rset.getString("or_No")));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	
	
	public ArrayList<Member> selectOrderDevDetail(Connection conn,int memNo){
		ArrayList<Member> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectOrderDevDetail");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			rset= pstmt.executeQuery();
		
			
			while(rset.next()) {
				list.add(new Member( 
								   rset.getString("or_no"),
								   rset.getString("image_url1"),
								   rset.getString("p_name"),
								   rset.getInt("price"),
								   rset.getDate("or_date"),
								   rset.getString("p_code")
									));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	

	public ArrayList<Point> PointList(Connection conn,int memNo){
		ArrayList<Point> list = new ArrayList<>();
		PreparedStatement pstmt=null;
		ResultSet rset = null;
		String sql = prop.getProperty("PointList");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,memNo);
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Point(
							rset.getInt("point_No"),
							rset.getInt("point"),
							rset.getDate("date"),
							rset.getString("history"),
							rset.getString("point_update")
							));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	public ArrayList<Member> OrderCancleView(Connection conn, int memNo){
		
		ArrayList<Member> list = new ArrayList<>();
		PreparedStatement pstmt=null;
		ResultSet rset = null;
		String sql = prop.getProperty("OrderCancleView");
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,memNo);
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Member(
							rset.getString("or_no"),
							rset.getString("image_url1"),
							rset.getString("p_name"),
							rset.getInt("price"),
							rset.getDate("or_date"),
							rset.getString("p_code")
							));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	public Member RefundController(Connection conn,int memNo,String p_code,String orNo){
		
		Member m = null;
		PreparedStatement pstmt=null;
		ResultSet rset = null;
		String sql = prop.getProperty("RefundController");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			pstmt.setString(2, orNo);
			pstmt.setString(3, p_code);
			rset=pstmt.executeQuery();

			
			if(rset.next()) {
				m = new Member(
							rset.getString("p_name"),
							rset.getDate("or_date"),
							rset.getInt("price"),
							rset.getString("image_url1")
						);
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return m;
	}
	

	
	
	
	public int WriteReviewComplete(Connection conn, int memNo, String pname) {
		
		int result=0;
		PreparedStatement pstmt=null;
		
		
		return 0;
		
	}
	
	public int CancleComplete(Connection conn,int memNo,String p_code,String orNo) {
		
		int result = 0;
		PreparedStatement pstmt=null;
		String sql= prop.getProperty("CancleComplete");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, orNo);
			pstmt.setInt(2, memNo);
			
			result=pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int CancleStockComplete(Connection conn,String p_code) {
		
		int result = 0;
		PreparedStatement pstmt=null;
		String sql= prop.getProperty("CancleStockComplete");
		
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, p_code);
			result=pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	
	
	//찜한 목록 조회
	public ArrayList<Product> selectScrapList(Connection conn, int memNo){
		
		ArrayList<Product> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectScrapList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(
						  rset.getString("p_code"),
						  rset.getString("p_name"),
						  rset.getInt("price"),
						  rset.getString("image_url1")
						 ));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
}
