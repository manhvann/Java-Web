/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import model.Account;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Book;
import model.Category;

/**
 *
 * @author Van Manh
 */
public class DAO extends DBContext {

    private final DBContext db;

    public DAO() {
        db = new DBContext();
    }

    public boolean saveAccount(Account account) {
        String checkSql = "SELECT COUNT(*) FROM Account WHERE username = ?";
    String insertSql = "INSERT INTO Account (username, password, role) VALUES (?, ?, ?)";

    try (Connection con = db.getConnection();
         PreparedStatement checkStmt = con.prepareStatement(checkSql);
         PreparedStatement insertStmt = con.prepareStatement(insertSql)) {

        // Kiểm tra sự tồn tại của tài khoản
        checkStmt.setString(1, account.getUsername());
        try (ResultSet resultSet = checkStmt.executeQuery()) {
            if (resultSet.next() && resultSet.getInt(1) > 0) {
                // Tài khoản đã tồn tại
                return false;
            }
        }

        // Thêm tài khoản mới
        insertStmt.setString(1, account.getUsername());
        insertStmt.setString(2, account.getPassword());
        insertStmt.setInt(3, account.getRole());

        int rowsAffected = insertStmt.executeUpdate();
        return rowsAffected > 0;
    } catch (SQLException e) {
        // Xử lý ngoại lệ
        e.printStackTrace();
    }
    return false;
    }

    public Account check(String username, String password) {
        String sql = "select * from Account where username=? and password=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Account a = new Account(rs.getString("Username"), rs.getString("password"), rs.getInt("role"));
                return a;
            }
        } catch (SQLException e) {

        }
        return null;
    }
    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String sql = "select * from Categories";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt("CategoryID"),
                        rs.getString("categoryName"));
                        list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    public Category getCategoryById(int id) {
        String sql = "SELECT * FROM Category WHERE categoryID=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Category c = new Category(rs.getInt("categoryID"),
                        rs.getString("categoryName"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
        

    public void close() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
