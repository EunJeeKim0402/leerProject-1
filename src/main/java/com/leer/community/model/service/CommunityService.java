package com.leer.community.model.service;

import static com.leer.common.JDBCTemplate.close;
import static com.leer.common.JDBCTemplate.commit;
import static com.leer.common.JDBCTemplate.getConnection;
import static com.leer.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.leer.common.model.vo.Attachment;
import com.leer.common.model.vo.Category;
import com.leer.common.model.vo.PageInfo;
import com.leer.community.model.dao.CommunityDao;
import com.leer.community.model.vo.ComuBoard;
import com.leer.community.model.vo.Reply;
import com.leer.member.model.vo.Member;
import com.leer.notice.model.vo.Notice;

public class CommunityService {
	public int selectListCount() {

		Connection conn = getConnection();

		int listCount = new CommunityDao().selectListCount(conn);

		close(conn);
		return listCount;
	}
	public ArrayList<ComuBoard> selectList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<ComuBoard> list = new CommunityDao().selectList(conn, pi);

		close(conn);
		return list;
	}
	public ArrayList<Category> selectCategoryList(){
		
		Connection conn = getConnection();
		
		ArrayList<Category> cateList = new CommunityDao().selectCategoryList(conn);
		
		close(conn);
		
		return cateList;
		
		
	}
	public int insertBoard(ComuBoard c, Attachment at) {
		Connection conn = getConnection();
		
		int result1 = new CommunityDao().insertBoard(conn, c);
		
		int result2 = 1;
		
		if(at != null) {
			result2 = new CommunityDao().insertAttachment(conn, at);
		}
		if( result1 > 0 && result2 > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		return result1 * result2;
	}
	public int increaseCount(int comuNo) {
		Connection conn = getConnection();
		
		int result = new CommunityDao().increaseCount(conn, comuNo);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		} 
		close(conn);
		return result;
	}
	
	public ComuBoard selectBoard(int comuNo) {
		Connection conn = getConnection();
		
		ComuBoard c = new CommunityDao().selectBoard(conn, comuNo);
		
		close(conn);
		
		return c;
	}
	
	public Attachment selectAttachment(int comuNo) {
		Connection conn = getConnection();
		Attachment at = new CommunityDao().selectAttachment(conn, comuNo);
		close(conn);
		return at;
		
	}
	public ArrayList<Reply> selectReplyList(int comuNo){
		Connection conn = getConnection();
		ArrayList<Reply> list = new CommunityDao().selectReplyList(conn, comuNo);
		close(conn);
		return list;
	}
	public int insertReply(Reply r) {
		Connection conn = getConnection();
		
		int result = new CommunityDao().insertReply(conn, r);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		} close(conn);
		
		return result;
		
	}
	
	public ArrayList<ComuBoard> selectMyBoardList(PageInfo pi, int memNo){
		Connection conn = getConnection();
		
		ArrayList<ComuBoard> list = new CommunityDao().selectMyBoardList(conn,  pi, memNo);
		
		close(conn);
		
		return list;
	}
	public ArrayList<Notice> selectNotiBoardList(){
		Connection conn = getConnection();
		
		ArrayList<Notice> list = new CommunityDao().selectNotiBoardList(conn);
		
		close(conn);
		
		return list;
	}
	
	public int notiIncreaseCount(int notiNo) {
		
		Connection conn = getConnection();
		
		int result = new CommunityDao().notiIncreaseCount(conn, notiNo);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		} 
		close(conn);
		return result;
		
	}
	
	public Notice selectNotice(int notiNo) {
		Connection conn = getConnection();
		Notice n = new CommunityDao().selectNotice(conn, notiNo);
		close(conn);
		return n;
	}
	public Attachment selectNotiAttachment(int notiNo) {
		Connection conn = getConnection();
		
		Attachment at = new CommunityDao().selectNotiAttachment(conn, notiNo);
		close(conn);
		return at;
	}
	
	public ArrayList<ComuBoard> selectCategory(PageInfo pi, int cNo){
		
		Connection conn = getConnection();
		
		ArrayList<ComuBoard> list = new CommunityDao().selectCategory(conn, pi, cNo);
		
		close(conn);
		
		return list;
	}
	
	public Member selectMyCount(int memNo) {
		Connection conn = getConnection();
		
		Member m = new CommunityDao().selectMyCount(conn, memNo);
		
		close(conn);
		
		return m;
	}
	
	public int selectCategoryListCount(int cNo) {
		Connection conn = getConnection();
		
		int listCount = new CommunityDao().selectCategoryListCount(conn, cNo);
		
		close(conn);
		return listCount;
	}
	
	public int selectMyListCount(int memNo) {
		Connection conn = getConnection();
		int listCount = new CommunityDao().selectMyListCount(conn, memNo);
		
		close(conn);
		return listCount;
	}
	
	public int updateBoard(ComuBoard cb, Attachment at) {
		
		Connection conn = getConnection();
		
		int result = new CommunityDao().updateBoard(conn, cb, at);
		
		if(result > 0) {
			
			commit(conn);
		}else {
			
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
	public ArrayList<ComuBoard> selectTagList(PageInfo pi, String tag) {
		
		Connection conn = getConnection();
		
		ArrayList<ComuBoard> list = new CommunityDao().selectTagList(conn,pi, tag);
		
		close (conn);
		
		return list;
	}
	
	public int deleteBoard(String comuNo) {
		Connection conn = getConnection();
		
		int result = new CommunityDao().deleteBoard(conn, comuNo);
		if(result > 0) {
			
			commit(conn);
		}else {
			
			rollback(conn);
		}
		close(conn);
		return result;
	}
	public ArrayList<ComuBoard> selectMyBoard (int memNo){
		Connection conn = getConnection();
		
		ArrayList<ComuBoard> cmList = new CommunityDao().selectMyBoard(conn, memNo);
		
		close(conn);
		return cmList;
		
	}
	
	public ArrayList<ComuBoard> selectSearchList(String search, PageInfo pi){
			Connection conn = getConnection();
			
			ArrayList<ComuBoard> list = new CommunityDao().selectSearchList(conn, search, pi);
			
			close(conn);
			return list;	
	}
	
	public int selectSearchListCount(String search) {
		Connection conn = getConnection();
		
		int listCount = new CommunityDao().selectSearchListCount(conn, search);
		
		close(conn);
		return listCount;
	}
	public int selectTagListCount(String tag) {
		Connection conn = getConnection();
		
		int listCount = new CommunityDao().selectTagListCount(conn, tag);
		
		close(conn);
		return listCount;
	}
}
