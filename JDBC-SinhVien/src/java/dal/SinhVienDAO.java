package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.SinhVien;

/**
 *
 * @author Van Manh
 */
public class SinhVienDAO extends DBContext{
    public List<SinhVien> getAll(){
        List<SinhVien> list = new ArrayList<>();
        String sql = "select * from SV";
        try {
            PreparedStatement st = connection.prepareStatement(sql); 
            ResultSet rs = st.executeQuery();
            
            while (rs.next()) {
                SinhVien c = new SinhVien(rs.getString("maSV"),rs.getString("tenSV"),rs.getString("que"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    public void insert(SinhVien c){
        String sql="insert into SV values(?,?,?)";
        try {
            PreparedStatement st=connection.prepareCall(sql);
            st.setString(1, c.getMaSV());
            st.setString(2, c.getTenSV());
            st.setString(3, c.getQue());
            
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    public SinhVien GetSinhVienByMaSV(String maSV){
        String sql="select * from SV where maSV=?";
        try {
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, maSV);
            //Dòng lệnh st.setString(1, maSV) sử dụng để gán giá trị cho tham số đầu vào trong câu truy vấn SQL.
            ResultSet rs=st.executeQuery();
            if(rs.next()){
                SinhVien c=new SinhVien(rs.getString("maSV"),rs.getString("tenSV"),rs.getString("que"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    public static void main(String[] args) {
        SinhVienDAO c = new SinhVienDAO();
        List<SinhVien> list = c.getAll();
        System.out.println(list.get(0).getTenSV());
    }
}

