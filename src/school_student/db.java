package school_student;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class db {
	static Connection conn = null;

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String url = "jdbc:postgresql://localhost:5432/d1?useSSL=false";
		String username = "root";
		String password = "root";
		try {
			System.out.println("Connecting to PG...");

			conn = DriverManager.getConnection(url, username, password);
			System.out.println("Connected");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		// ************************ DELETE BY ID ************************

	}

	public static void deletetStudent(int id) {
		String sqlDeleteStudent = "DELETE FROM school_student WHERE id = ?";
		try {
			PerparedStatement stmtDeleteStudent = conn.prepareStatement(stmtDeleteStudent);
			stmtDeleteStudent.setInt(1, id);
			stmtDeleteStudent.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void getBest() {
		String sqlGetBest = "SELECT * FROM school_student ";
		try {
			Statement stmt = conn.createStatement();
			sqlGetBest.execute(sqlGetBest);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void getVoteRange(int min, int max) {
		String sqlGetBest = "SELECT * FROM school_student WHERE avg_min >= ? AND avg_max <= ? ";
		try {
			Statement stmtGetBest = conn.createStatement();
			PreparedStatement stmtGetBest = conn.prepareStatement(sqlGetBest);
			sqlGetBest.setInt(1, min);
			sqlGetBest.setInt(2, max);
			ResultSet votes = stmtGetBest.execute(sqlGetBest);

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void insertStudent(String name, String lastname, String gender, Date birthdate, double avg,
			double min_avg, double max_avg) {
		String sqlInsert = "INSERT INTO school_student (name,lastname,gender,birthdate,avg,min_vote,max_vote) VALUES(?,?,?,?,?,?,?)";
		try {
			PreparedStatement stmt = conn.prepareStatement(sqlInsert);
			stmt.setString(1, name);
			stmt.setString(2, lastname);
			stmt.setString(3, gender);
			stmt.setDate(4, birthdate);
			stmt.setDouble(5, avg);
			stmt.setDouble(6, min_avg);
			stmt.setDouble(7, max_avg);
			stmt.execute();
			System.out.println("Pizza inserita!");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
