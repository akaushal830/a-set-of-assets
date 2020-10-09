package com.hsbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;

import javax.xml.ws.Response;

import com.hsbc.db.DBConnection;
import com.hsbc.model.AssetBean;

public class AssetDao {

	DBConnection connection = new DBConnection();
	Connection conn = connection.getConnection();

	public void addAsset(AssetBean asset) {
		//int count = 0;
		try {
			PreparedStatement pstmt = conn.prepareStatement("Insert into Asset values (DEFAULT , ? , ? , ? , ? , ?)");
			// pstmt.setInt(1, asset.getAssetId());
			pstmt.setString(1, asset.getCategory());
			pstmt.setString(2, asset.getSubcategory());
			pstmt.setString(3, asset.getDescription());
			pstmt.setString(4, asset.getDateAdded().toString());
			pstmt.setBoolean(5, asset.isAvailable());
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//return count;
	}

	public void returnAsset(int transactionId, int assetId) {
		try {
			PreparedStatement pstmt = conn.prepareStatement("Select TransactionId , is_Fine_Paid from OverdueTransactions where TransactionId = ?");
			pstmt.setInt(1, transactionId);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getBoolean(2)) {
					PreparedStatement pstmt1 = conn.prepareStatement("Update OverdueTransactions " 
																	+ "SET Ban_Start_Date = ?"
																	+ "where TransactionId = ?");
					pstmt1.setString(1, LocalDate.now().toString());
					pstmt1.setInt(2, transactionId);
					pstmt1.executeUpdate();
				} else {
					System.out.println("Fine not paid");
					return;
				}

				PreparedStatement pstmt2 = conn.prepareStatement("Update Borrow "
																+ "SET Return_Date = ?"
																+ "Set Borrow_Status = ?"
																+ "where TransactionId = ?");
				pstmt2.setString(1, LocalDate.now().toString());
				pstmt2.setString(2, "Closed");
				pstmt2.setInt(3, transactionId);
				pstmt2.executeUpdate();
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void showAssets(int userId)
	{
		
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement("select TransactionId, UserId, AssetId, BorrowStatus from Borrow where UserId = ?", ResultSet.TYPE_SCROLL_INSENSITIVE);
			pstmt.setInt(1, userId);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next())
			{
				if(rs.getString(4).equals("pending"))
				{
					return;
				}
			}
			rs.first();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
}
