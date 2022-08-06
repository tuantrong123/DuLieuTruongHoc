package Result;
/*
 * File: DB.java
 * ThÆ° viá»‡n hÃ m chá»©c nÄƒng quáº£n trá»‹ CSDL
 * TÃ¡c giáº£: PhÆ°Æ¡ng VH <phuonghuuvu@gmail.com> 
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;


public class DB 
{
    // ThÃ´ng tin mÃ¡y chá»§ CSDL MySQL
    static String url       = "jdbc:mysql://localhost:3306/hocsinh?useUnicode=yes&characterEncoding=UTF-8";
    static String user      = "root";
    static String password  = "";
    
    // Biáº¿n nÃ y Ä‘á»ƒ duy trÃ¬ káº¿t ná»‘i mÃ¡y chá»§, mÃ¡y khÃ¡ch
    static Connection dbConnection = null;
        
    /**
     * Má»Ÿ káº¿t ná»‘i tá»›i mÃ¡y chá»§ CSDL
     *
     * @throws SQLException
     * @throws java.lang.ClassNotFoundException
     */
    public static void open() 
            throws SQLException, ClassNotFoundException 
    {
        Class.forName("com.mysql.jdbc.Driver"); // 
        dbConnection = DriverManager.getConnection(url, user, password);
        
        Statement stmt = dbConnection.createStatement();
        stmt.executeQuery("SET CHARACTER SET 'UTF8'");
    }
    
    /**
     * Ä�Ã³ng káº¿t ná»‘i tá»›i mÃ¡y chá»§ CSDL
     * @throws SQLException 
     */
    public static void close() 
            throws SQLException 
    {
        if(dbConnection != null)
            dbConnection.close();
    }
    
    /**
     * Láº¥y ra dá»¯ liá»‡u cá»§a 1 báº£ng MySQL
     * @param sql
     * @return
     * @throws SQLException
     * @throws ClassNotFoundException 
     */
    public static ResultSet q(String sql) 
            throws SQLException, ClassNotFoundException 
    {
        // Thá»±c thi cÃ¢u truy váº¥n
        Statement stmt = dbConnection.createStatement();
        
        ResultSet rs = stmt.executeQuery(sql);
        
        return rs;
    }
        
    // Thá»±c thi cÃ¡c cÃ¢u SQL insert, update, delete
    // https://coderwall.com/p/rvduyw/jdbc-inserting-unicode-utf-8-characters-into-mysql
    public static void exec(String sql, HashMap<Integer,String> params) 
            throws SQLException, ClassNotFoundException 
    {
        open(); // Má»Ÿ káº¿t ná»‘i
        
        PreparedStatement preparedSQL = dbConnection.prepareStatement(sql);
        
        for (Integer key : params.keySet())
        {
            //preparedSQL.setString(key, params.get(key));
            preparedSQL.setNString(key, params.get(key));
        }
        
        System.out.println(preparedSQL);
            
            
            // execute the preparedstatement
        preparedSQL.execute();
        
        close();
    }
}// end class
