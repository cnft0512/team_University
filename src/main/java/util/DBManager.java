package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBManager {

	public static Connection getConnection() {
		Connection conn = null;
		try {
			// 연결에 필요한 정보
			String user = "team_university";
			String pw = "system";
			String url = "jdbc:oracle:thin:@localhost:1521:XE";

			// 드라이버를 메모리에 할당
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 연결된 객체 가져오기
			conn = DriverManager.getConnection(url, user, pw);
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로딩 실패");// 드라이버 주소가 잘못됨
		} catch (SQLException e) {
			System.out.println("연결 실패");// url이 잘못됨
		} catch (Exception e) {
			System.out.println("알수 없는 오류");
		}
		return conn;
		/*
		 * Context initContext; try { initContext = new InitialContext(); DataSource ds
		 * = (DataSource) initContext.lookup("java:/comp/env/jdbc/myoracle"); conn =
		 * ds.getConnection(); }catch(Exception e) { e.printStackTrace(); } return conn;
		 */
	}

	// select
	public static void close(Connection conn, Statement stmt, ResultSet rs) {
		try {
			rs.close();
			stmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// insert, update, delete
	public static void close(Connection conn, Statement stmt) {
		try {
			stmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}