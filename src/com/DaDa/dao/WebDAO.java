package com.DaDa.dao;

import java.util.List;

import MyWeb.Web;

public interface WebDAO {
	
	public List<Web> getAll();
	
//	public void save(Web web);
	
	public List<Web> getWeb(String keyword);
	
	public List<Web> getWebInContent(String content);
	
	public List<Web> getWebInFileType(String type);
}
