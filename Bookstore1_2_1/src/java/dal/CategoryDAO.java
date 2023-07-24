/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.util.ArrayList;
import java.util.List;
import model.Category;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Van Manh
 */
public class CategoryDAO extends DBContext {

    //Đọc tất cả các bản ghi từ table Categories
    public List<Category> getAll() {
        List<Category> list = new ArrayList<>();
        String sql = "select * from Categories";
        try {
            PreparedStatement st = connection.prepareStatement(sql); 
            /*
            Dòng lệnh PreparedStatement st = connection.prepareStatement(sql); được sử dụng để khởi tạo một đối tượng 
            kiểu PreparedStatement, đồng thời chuẩn bị truy vấn SQL được định nghĩa trong biến sql bằng cách sử dụng 
            đối tượng Connection đã được thiết lập trước đó.
            
            Cụ thể, connection là một đối tượng kiểu Connection được thiết lập để kết nối với cơ sở dữ liệu, và được 
            sử dụng để tạo ra một đối tượng PreparedStatement. Phương thức prepareStatement được gọi trên đối tượng 
            Connection này và truyền vào câu lệnh SQL được lưu trong biến sql. Kết quả trả về của phương thức 
            prepareStatement là một đối tượng PreparedStatement được sử dụng để thực thi câu lệnh SQL đã được chuẩn bị 
            sẵn với các tham số đầu vào tương ứng.
            */
            ResultSet rs = st.executeQuery();
            /*
            
            Dòng lệnh ResultSet rs = st.executeQuery(); được sử dụng để thực thi câu lệnh SQL đã được chuẩn bị trước 
            đó bằng đối tượng PreparedStatement và lấy ra kết quả trả về trong một đối tượng ResultSet.

            Cụ thể, đối tượng st đã được chuẩn bị sẵn với câu lệnh SQL được định nghĩa trong biến sql và các tham số 
            đầu vào tương ứng. Khi thực thi phương thức executeQuery() trên đối tượng st, câu lệnh SQL đã được chuẩn 
            bị sẵn sẽ được thực thi trên cơ sở dữ liệu và kết quả trả về sẽ được lưu trữ trong đối tượng ResultSet 
            được gán cho biến rs.

            Đối tượng ResultSet chứa một tập hợp các dòng dữ liệu, mỗi dòng dữ liệu tương ứng với một bản ghi được 
            trả về từ câu lệnh SQL được thực thi. Các dữ liệu trong mỗi bản ghi được truy cập bằng các phương thức 
            như getInt(), getString(), v.v.
            */
            while (rs.next()) {
                Category c = new Category(rs.getInt("id"),rs.getString("name"),rs.getString("describe"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void insert(Category c) {
        String sql = "INSERT INTO [dbo].[Categories]\n"
                + "           ([ID]\n"
                + "           ,[name]\n"
                + "           ,[describe])\n"
                + "     VALUES(?,?,?)";
        //String sql="insert into Categories values(?,?,?)";
        
        try {
            PreparedStatement st=connection.prepareCall(sql);
            /*
            Phương thức prepareCall(sql) được sử dụng để chuẩn bị một câu lệnh SQL cho các thủ tục lưu trữ (stored 
            procedure), trong khi đó phương thức prepareStatement(sql) được sử dụng để chuẩn bị một câu lệnh SQL 
            cho các truy vấn đơn giản hoặc các câu lệnh SQL khác.
            
            Phương thức prepareCall(sql) cung cấp một số tính năng bổ sung cho việc sử dụng thủ tục lưu trữ, chẳng 
            hạn như đối với các thủ tục lưu trữ trả về nhiều bộ kết quả (multiple result sets) hoặc sử dụng các 
            tham số OUT để truy xuất các giá trị được trả về từ thủ tục lưu trữ. Trong khi đó, phương thức 
            prepareStatement(sql) chỉ hỗ trợ cho việc thực thi truy vấn đơn giản và truy xuất các bản ghi từ các 
            bảng dữ liệu.
            */
            st.setInt(1,c.getId());
            st.setString(2,c.getName());
            st.setString(3,c.getDescribe());
            
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    //Tìm một category khi có id
    public Category getCategoryById(int id) {
        String sql = "select * from Categories where id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Category c = new Category(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("describe"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    public static void main(String[] args) {
        CategoryDAO c = new CategoryDAO();
        List<Category> list = c.getAll();
        System.out.println(list.get(0).getName());
    }

}
