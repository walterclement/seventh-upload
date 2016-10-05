package com.bakeecom.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.bakeecom.dao.CartDao;

import com.bakeecom.model.Cart;


@Service("cartService")
public class CartServiceImpl implements CartService 
{
	@Autowired
	CartDao cartDao;

	@Transactional(propagation = Propagation.SUPPORTS)
	public int insertRow(Cart cart) {
		return cartDao.insertRow(cart);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public List getList() {
		return cartDao.getList();
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public Cart getRowById(int pid) {
		return cartDao.getRowById(pid);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public int updateRow(Cart cart) {
		return cartDao.updateRow(cart);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public int deleteRow(int pid) {
		return cartDao.deleteRow(pid);
	}

}
