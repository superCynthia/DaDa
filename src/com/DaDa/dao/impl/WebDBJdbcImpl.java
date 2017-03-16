package com.DaDa.dao.impl;

import java.util.List;

import com.DaDa.dao.DAO;
import com.DaDa.dao.WebDAO;

import MyWeb.Web;

public class WebDBJdbcImpl extends DAO<Web> implements WebDAO{

	@Override
	public List<Web> getAll() {
		String sql = "select * from myweb";
		return getForList(sql);
	}

	/**
	 * 这个目前只能处理英文 汉字是乱码！
	 */
	@Override
	public List<Web> getWeb(String keyword) {
		String sql = "select * from myweb where tagname like '%"+keyword+"%' or fileType like '%"+keyword+"%'";
		return getForList(sql);
	}

	@Override
	public List<Web> getWebInContent(String content) {
		String sql = "select * from myweb where content = ?";
		return getForList(sql,content);
	}

	@Override
	public List<Web> getWebInFileType(String type) {
		String sql = "select * from myweb where fileType = ?";
		return getForList(sql,type);
	}

	
}
