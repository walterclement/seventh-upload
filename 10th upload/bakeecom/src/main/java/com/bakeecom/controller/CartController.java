package com.bakeecom.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.bakeecom.services.ProductService;

import com.bakeecom.model.Cart;
import com.bakeecom.model.Category;
import com.bakeecom.model.Product;
import com.bakeecom.model.Supplier;
import com.bakeecom.services.CartService;
@Controller
public class CartController {
	
	public CartController() {
		System.out.println("inside cart controller");
		
	}
	@Autowired
	CartService cartService;
	
	@Autowired
	ProductService productService;
	
	@RequestMapping("/cart")
	public@ResponseBody ModelAndView gotoCart(ModelMap m)
	{
		 List<Product> lo=productService.getList();
		 m.addAttribute("lstProduct", lo);
		 List<Cart> cartList=cartService.getList();
		 m.addAttribute("chkMsg", "hello");
		 m.addAttribute("cartList", cartList);
		 return new ModelAndView("cart","lstProduct",lo);
//		m.addAttribute("lstCart", lo);
//		List<Cart> cartList=cartService.getList();
//		m.addAttribute("cartList", cartList);
//		List<Product> productList=productService.getList();
//		
	
	}
	@RequestMapping(value="addCart",method=RequestMethod.POST)
	public ModelAndView saveCart(@ModelAttribute("car")Cart car)
	{
	cartService.insertRow(car);
	return new ModelAndView("singleproduct").addObject("command", new Cart());
	}
	@RequestMapping("/deleteCart")
	public ModelAndView deleteCart(@RequestParam int id)
	{
	cartService.deleteRow(id);
		return new ModelAndView("redirect:cart");
	}


}
