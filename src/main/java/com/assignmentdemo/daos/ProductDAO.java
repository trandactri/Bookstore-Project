package com.assignmentdemo.daos;

import com.assignmentdemo.db.DBConnection;
import com.assignmentdemo.models.Category;
import com.assignmentdemo.models.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {

    public static Connection conn = DBConnection.getConnection();

    public static List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        try {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("select * from Product");
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getDouble(4),rs.getString(5)));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            return list;
        }
    }

    public static List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        try {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("select * from Category");
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),rs.getString(2)));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            return list;
        }
    }

    public static List<Product> getProductByCID(int cid) {
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = conn.prepareStatement("select * from Product where cid = ?;");
            ps.setInt(1,cid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5)));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            return list;
        }
    }

    public static Product getProductByID(int id) {
        Product p = null;
        try {
            PreparedStatement ps = conn.prepareStatement("select * from Product where id = ?;");
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                 p = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            return p;
        }
    }

    public static List<Product> searchByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = conn.prepareStatement("select * from product where name like ?;");
            ps.setString(1,"%"+txtSearch+"%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5)));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            return list;
        }
    }
}
