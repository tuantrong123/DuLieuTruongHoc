package Class;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import Result.DB;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Administrator
 */
public class Lop 
{
	public static List<HashMap<String, String>> Pagination(int pageSize,int page) 
            throws SQLException, ClassNotFoundException
    {
    	
        String sql = "SELECT COUNT(*) as total FROM `lop_hoc`";        
        DB.open(); 
        ResultSet rs = DB.q(sql);
        List<HashMap<String,String>> list = new ArrayList<>();
        while(rs.next())
        {
            HashMap<String,String> row = new HashMap<>();
            int total= Integer.parseInt(rs.getString("total"));
            float allPage= total/pageSize;
            Math.ceil(allPage);
            for(int i=0;i<=allPage;i++){
            	row.put("PrePage",""+(page-1)+"");
            	row.put("PageHere",""+page+"");
            	row.put("Page", ""+i+"");
            	row.put("NextPage", ""+(page+1)+"");
            }
                
            list.add(row);             
        }
        
        DB.close();
        return list;
    }
    public static List<HashMap<String, String>> List(int pageSize,int count,String Keywork) 
            throws SQLException, ClassNotFoundException
    {
        String sql = 
            "SELECT * FROM `lop_hoc` WHERE lop_hoc.NameClass like '%"+Keywork+"%' limit "+pageSize+" offset "+count+";";
        
        DB.open(); // Mở kết nối tới CSDL
        ResultSet rs = DB.q(sql);
            
        // Dữ liệu trả v�?
        List<HashMap<String,String>> list = new ArrayList<>();
        
        // �?ẩy dữ liệu bảng MySQL sang Java List
        while(rs.next())
        {
            HashMap<String,String> row = new HashMap<>();
            row.put("ClassId", rs.getString("ClassId")) ;
            row.put("NameClass",rs.getString("NameClass")) ;
                
            list.add(row);             
        }
        
        DB.close(); // �?óng kết nối sau khi dữ liệu ResultSet đã chạy sang List
                    // Khi đóng DB thì ResultSet cũng chết theo !!!
        
        return list;
    }
    
    /**
     * Lấy ra chi tiết của 1 dòng bản ghi dữ liệu
     * @param id
     * @return
     * @throws SQLException
     * @throws ClassNotFoundException 
     */
    public static HashMap<String,String> Details(String ClassId) 
            throws SQLException, ClassNotFoundException
    {
        //String sql = "SELECT * FROM `ThuCung` ");
        String sql = "SELECT  * FROM `lop_hoc` WHERE `ClassId`='"+ClassId+"'";
        
        DB.open(); 
        ResultSet rs = DB.q(sql);
            
       
        HashMap<String,String> row  = new HashMap<>();
        
        
        while(rs.next())
        {
            row.put("ClassId", rs.getString("ClassId")) ;
            row.put("NameClass",rs.getString("NameClass")) ;
                
            break; // Lấy xong dữ liệu 1 dòng bản ghi rồi thì thôi        
        }
        
        DB.close(); // �?óng kết nối sau khi dữ liệu ResultSet đã chạy sang List
                    // Khi đóng DB thì ResultSet cũng chết theo !!!
        
        return row;
    }
    
    /**
     * Thêm mới 1 dòng bản ghi
     * @param params
     * @throws SQLException
     * @throws ClassNotFoundException 
     */
    public static void Add(HashMap<Integer,String> params) 
            throws SQLException, ClassNotFoundException
    {
        // Câu này paste trực tiếp vào XAMPP PHP MySQL lại ko việc gì 
            //INSERT INTO ThuCung SET `Ten`='Doremon',`Tuoi`='3',`CanNang`='3.5',`NhomMau`='A',`GioiTinh`= '1'
            
        // the mysql insert statement
        // �?ừng có đặt dấu ? trong nháy đơn, Java làm hộ mình rồi nhé !
        String sql = " INSERT INTO `lop_hoc`(`ClassId`, `NameClass`) VALUES (?,?)";
                       
        // Thực thi câu SQL INSERT
        DB.exec(sql, params);
    }
    
    /**
     * Sửa 1 dòng bản ghi theo khoá chính: id
     * @param params
     * @throws SQLException
     * @throws ClassNotFoundException 
     */
    public static void Edit(HashMap<Integer,String> params) 
            throws SQLException, ClassNotFoundException
    {
        String sql = "UPDATE `lop_hoc` SET `NameClass`=? WHERE `ClassId`=?";              
        DB.exec(sql, params);
    }
    
    /**
     * Xoá 1 dòng bản ghi theo khoá chính id
     * @param params
     * @throws SQLException
     * @throws ClassNotFoundException 
     */
    public static void Delete(HashMap<Integer,String> params) 
            throws SQLException, ClassNotFoundException
    {
        // Câu này paste trực tiếp vào XAMPP PHP MySQL lại ko việc gì 
            //INSERT INTO ThuCung SET `Ten`='Doremon',`Tuoi`='3',`CanNang`='3.5',`NhomMau`='A',`GioiTinh`= '1'
            
        // the mysql insert statement
        // �?ừng có đặt dấu ? trong nháy đơn, Java làm hộ mình rồi nhé !
        // �?ừng có đặt dấu ? trong nháy đơn, Java làm hộ mình rồi nhé !
        // Câu này paste trực tiếp vào XAMPP PHP MySQL lại ko việc gì 
            //INSERT INTO ThuCung SET `Ten`='Doremon',`Tuoi`='3',`CanNang`='3.5',`NhomMau`='A',`GioiTinh`= '1'
            

        String sql = "DELETE FROM `lop_hoc` WHERE `ClassId`= ?";
                       
        // Thực thi câu SQL 
        DB.exec(sql, params);
    }
}// end class
