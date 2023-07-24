/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import model.Admin;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Van Manh
 */
public class DAO extends DBContext {

    private final DBContext db;

    public DAO() {
        db = new DBContext();
    }

    public boolean saveAdmin(Admin admin) {
        String checkSql = "SELECT COUNT(*) FROM Admin WHERE username = ?";
    String insertSql = "INSERT INTO Admin (username, password, role) VALUES (?, ?, ?)";

    try (Connection con = db.getConnection();
         PreparedStatement checkStmt = con.prepareStatement(checkSql);
         PreparedStatement insertStmt = con.prepareStatement(insertSql)) {

        // Kiểm tra sự tồn tại của tài khoản
        checkStmt.setString(1, admin.getUsername());
        try (ResultSet resultSet = checkStmt.executeQuery()) {
            if (resultSet.next() && resultSet.getInt(1) > 0) {
                // Tài khoản đã tồn tại
                return false;
            }
        }

        // Thêm tài khoản mới
        insertStmt.setString(1, admin.getUsername());
        insertStmt.setString(2, admin.getPassword());
        insertStmt.setInt(3, admin.getRole());

        int rowsAffected = insertStmt.executeUpdate();
        return rowsAffected > 0;
    } catch (SQLException e) {
        // Xử lý ngoại lệ
        e.printStackTrace();
    }
    return false;
    }

    public Admin check(String username, String password) {
        String sql = "select * from Admin where username=? and password=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Admin a = new Admin(rs.getString("Username"), rs.getString("password"), rs.getInt("role"));
                return a;
            }
        } catch (SQLException e) {

        }
        return null;
    }

    public void close() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
