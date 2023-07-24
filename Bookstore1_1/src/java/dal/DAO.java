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
        String sql = "INSERT INTO Admin (username, password, role) VALUES (?, ?, ?)";
        try ( Connection con = db.getConnection();  PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, admin.getUsername());
            stmt.setString(2, admin.getPassword());
            stmt.setInt(3, admin.getRole());

            int rowsAffected = stmt.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
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

}
