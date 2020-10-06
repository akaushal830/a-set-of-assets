package com.hsbc.service;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hsbc.dao.AssetDao;
import com.hsbc.model.AssetBean;

/**
 * Servlet implementation class AddAssetServlet
 */
@WebServlet("/AddAssetServlet")
public class AddAssetServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		AssetBean asset = new AssetBean();
		asset.setAssetId(Integer.parseInt(request.getParameter("assetid")));
		asset.setSubcategory(request.getParameter("subcategory"));
		asset.setCategory(request.getParameter("category"));
		asset.setDateAdded(LocalDate.parse(request.getParameter("date")));
		asset.setDescription(request.getParameter("description"));
		asset.setAvailable(Boolean.parseBoolean(request.getParameter("isavailable")));
		
		AssetDao dao = new AssetDao();
		dao.addAsset(asset);
		
	}

}
