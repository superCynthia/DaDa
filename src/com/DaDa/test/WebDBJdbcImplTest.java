package com.DaDa.test;

import java.util.List;

import org.junit.Test;

import com.DaDa.dao.WebDAO;
import com.DaDa.dao.impl.WebDBJdbcImpl;

import MyWeb.Web;

public class WebDBJdbcImplTest {

	private WebDAO webDAO = new WebDBJdbcImpl();
	
	@Test
	public void testGetAll() {
		List<Web> webs = webDAO.getAll();
		System.out.println(webs);
	}

	@Test
	public void testGetWeb() {
		List<Web> webs = webDAO.getWeb("Flash");
		System.out.println(webs);
	}

}
