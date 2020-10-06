package com.hsbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.hsbc.db.DBConnection;
import com.hsbc.model.AssetBean;

public class AssetDao {
	
	DBConnection connection = new DBConnection();
	Connection conn = connection.getConnection();
	
	public void addAsset(AssetBean asset)
	{
		try {
			PreparedStatement pstmt = conn.prepareStatement("Insert into Assets values (? , ? , ? , ? , ? , ?)");
			pstmt.setInt(1, asset.getAssetId());
			pstmt.setString(2, asset.getSubcategory());
			pstmt.setString(3, asset.getCategory());
			pstmt.setString(4, asset.getDateAdded().toString());
			pstmt.setString(5, asset.getSubcategory());
			pstmt.setBoolean(6, asset.isAvailable());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void returnAsset(AssetBean asset)
	{
		try {
			PreparedStatement pstmt = conn.prepareStatement("Delete from Assets where Asset_Id = ?");
			pstmt.setInt(1, asset.getAssetId());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
