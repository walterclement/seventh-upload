package com.bakeecom.controller;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bakeecom.model.Category;
import com.bakeecom.model.Supplier;
import com.bakeecom.services.CategoryService;
import com.bakeecom.services.SupplierService;

@Controller
public class CategoryController {
	
	public CategoryController(){
		
		System.out.println("inside category controller");
	}
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping("/category")
	public ModelAndView gotoCategory(@ModelAttribute("cate")Category cate)
	{
	return new ModelAndView("category");
	}
	@RequestMapping(value="addCategory",method=RequestMethod.POST)
	public ModelAndView saveCategory(@ModelAttribute("cate")Category cate)
	{
	categoryService.insertRow(cate);
	return new ModelAndView("category").addObject("command", new Category());
	}
	
	@RequestMapping("/categorylist")
	public ModelAndView listCategory(ModelMap m)
	{
	List<Category> categoryList=categoryService.getList();
	m.addAttribute("chkMsg", "hello");
	return new ModelAndView("categorylist","categoryList", categoryList);
	}
	@RequestMapping("/categoryedit")
	public ModelAndView categoryedit(@ModelAttribute("cate")Category cate,@RequestParam int id)
	{
		cate=categoryService.getRowById(id);
		ModelAndView mv=new ModelAndView("categoryedit","cateList",cate);
		mv.setViewName("categoryedit");
		
		return mv.addObject("command", cate);
	}
	
	@RequestMapping(value="updateCategory",method=RequestMethod.POST)
	public ModelAndView updateProd(@ModelAttribute("cate")Category cate)
	{
//	prod=dataService.getRowById(id);
	categoryService.updateRow(cate);
	return new ModelAndView("redirect:categorylist");
		
	}
	
@RequestMapping("/deleteCategory")
	public ModelAndView deleteCategory(@RequestParam int id)
	{
	categoryService.deleteRow(id);
		return new ModelAndView("redirect:categorylist");
	}

}
	


