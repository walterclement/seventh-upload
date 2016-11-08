package com.bakeecom.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bakeecom.model.Item;
import com.bakeecom.model.Product;
import com.bakeecom.services.ProductService;

@Controller
public class cartcontroller1 {


	@Autowired
	ProductService productService;
	
	@RequestMapping("addToCart")
	public ModelAndView addToCart(@ModelAttribute("prod")Product prod,@RequestParam int id,Model m,HttpSession s)
	{
		if(s.getAttribute("cart")==null)
		{
			List<Item> cart=new ArrayList<Item>();
			cart.add(new Item(productService.getRowById(id),1));
			s.setAttribute("cart", cart);
		}
		else
		{
			List<Item> cart=(List<Item>) s.getAttribute("cart");
			int index=isExisting(id,s);
			if(index==-1)
			{
				cart.add(new Item(productService.getRowById(id),1));
			}
			else
			{
				int quantity=cart.get(index).getQuantity()+1;
				cart.get(index).setQuantity(quantity);
			}
			m.addAttribute("cart", cart);
		}
		return new ModelAndView("cartpage");
	}
	
	@RequestMapping("deleteThisProduct")
	public ModelAndView toRemoveThatProduct(@ModelAttribute("prod")Product prod,@RequestParam int id,Model m,HttpSession s)
	{
		List<Item> cart=(List<Item>) s.getAttribute("cart");
		int index=isExisting(id,s);
		cart.remove(index);
		m.addAttribute("cart", cart);
		return new ModelAndView("cartpage");
	}
	
	private int isExisting(int id,HttpSession s)
	{
		List<Item> cart=(List<Item>) s.getAttribute("cart");
		for(int i=0;i<cart.size();i++)
		{
			if(cart.get(i).getProduct().getPid()==id)
			{
				return i;
			}
		}
		return -1;
	}
	

}
