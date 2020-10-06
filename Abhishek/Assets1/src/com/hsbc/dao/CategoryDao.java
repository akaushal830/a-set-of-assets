package com.hsbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.hsbc.db.DBConnection;
import com.hsbc.model.AssetBean;
import com.hsbc.model.CategoryBean;

public class CategoryDao {
	
	DBConnection connection = new DBConnection();
	Connection conn = connection.getConnection();
	
	public void addCategory(CategoryBean category)
	{
		try {
			PreparedStatement pstmt = conn.prepareStatement("Insert into Categories values (? , ? , ? , ? )");
			pstmt.setString(1, category.getName());
			pstmt.setInt(2, category.getLendingPeriod());
			pstmt.setInt(3, category.getFine());
			pstmt.setInt(4, category.getBanPeriod());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
