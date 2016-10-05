package com.bakeecom.dao;
import java.io.Serializable;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.bakeecom.model.Cart;
import com.bakeecom.model.Category;

@Repository("cartDao")

public class CartImpl implements CartDao {
	@Autowired
	 SessionFactory sessionFactory;
	
	@Transactional(propagation=Propagation.SUPPORTS) 
	 public int insertRow(Cart cart) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	  session.saveOrUpdate(cart);
	  tx.commit();
	  Serializable pid = session.getIdentifier(cart);
	  session.close();
	  return (Integer) pid;
	 }

	@Transactional(propagation=Propagation.SUPPORTS) 
	 public List getList() {
	  Session session = sessionFactory.openSession();
	  @SuppressWarnings("unchecked")
	  List cartList = session.createQuery("from Cart")
	    .list();
	  session.close();
	  return cartList;
	 }

	@Transactional(propagation=Propagation.SUPPORTS)
	 public Cart getRowById(int pid) {
	  Session session = sessionFactory.openSession();
	  Cart cart = (Cart) session.load(Cart.class, pid);
	  return cart;
	 }

	@Transactional(propagation=Propagation.SUPPORTS)
	 public int updateRow(Cart cart) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	  session.saveOrUpdate(cart);
	  tx.commit();
	  Serializable pid = session.getIdentifier(cart);
	  session.close();
	  return (Integer) pid;
	}

	  @Transactional(propagation=Propagation.SUPPORTS)
	 public int deleteRow(int pid) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	  Cart cart = (Cart) session.load(Cart.class, pid);
	  session.delete(cart);
	  tx.commit();
	  Serializable ids = session.getIdentifier(cart);
	  session.close();
	  return (Integer) ids;
	 }

	  @Transactional(propagation=Propagation.SUPPORTS)
	public List<Cart> list() {
		@SuppressWarnings("unchecked")
		List<Cart> listCart=sessionFactory.getCurrentSession().createCriteria(Cart.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listCart;
	}


}
