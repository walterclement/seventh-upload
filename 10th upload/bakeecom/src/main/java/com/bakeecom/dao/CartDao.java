package com.bakeecom.dao;

import java.util.List;

import com.bakeecom.model.Cart;

public interface CartDao {
	public int insertRow(Cart cart);

	 public List getList();

	 public Cart getRowById(int pid);

	 public int updateRow(Cart cart);

	 public int deleteRow(int pid);
	 
	 public List<Cart> list();


}
