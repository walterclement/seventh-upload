package com.bakeecom.controller;
import java.io.BufferedOutputStream;

import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bakeecom.dao.CategoryDao;
import com.bakeecom.model.Category;
import com.bakeecom.model.Product;
import com.bakeecom.services.CategoryService;
import com.bakeecom.services.ProductService;
import com.bakeecom.model.Supplier;
import com.bakeecom.services.SupplierService;
import com.bakeecom.validator.ProValid;
import com.google.gson.Gson;


@Controller
public class BakeryController {

	public BakeryController() {
		System.out.println("inside bakery controller");
	}
	
	@Autowired
	ProductService productService;
	
	@Autowired
	ProValid proValid;
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	SupplierService supplierService;
	
	
	 @RequestMapping("uploadform")  
	    public ModelAndView uploadForm(){  
	        return new ModelAndView("uploadform");    
	    }  
	

	@RequestMapping("/")
	public String homePage() {
		return "homenew";
	}
	
	@RequestMapping("/homenew")
	public String menuPage() {
		return "homenew";
	}
	@RequestMapping("/login")
	public String gotologin(@RequestParam(value="error",required = false) String error, @RequestParam(value="logout",required = false) String logout, Model model) 
	{
		
		if(error!=null)
		{
			model.addAttribute("error","Invalid credentials to enter");
		}
		if(logout!=null)
		{
			model.addAttribute("msg", "You logged out successfully...");
		}
		return  "login";
  	}
	@RequestMapping("/form")
	public ModelAndView gotoProduct(ModelMap m)
	{
		
		 List<Category> lc=categoryService.getList();
		 List<Supplier> ls=supplierService.getList();
		 m.addAttribute("lstSupplier", ls);
		 List<Product> productList=productService.getList();
		 m.addAttribute("chkMsg", "hello");
		 m.addAttribute("productList", productList);
		 
		 Gson gson = new Gson();
		 String conv = gson.toJson(productList);
		 m.addAttribute("conversion", conv);
		 System.out.println("ConversionJson"+conv);
		 return new ModelAndView("form","lstCategory",lc).addObject("prod",new Product());
	
	}
	
	
	@RequestMapping(value="addProduct",method=RequestMethod.POST)
	public ModelAndView saveProduct(@Valid @ModelAttribute("prod")Product prod,BindingResult bind,Model w,HttpServletRequest req)
		{
		MultipartFile file=prod.getFile();
        String filename=file.getOriginalFilename();  
         String src=""; 
        try{  
        byte barr[]=file.getBytes();  
        BufferedOutputStream bout=new BufferedOutputStream(new FileOutputStream(new File("E:\\maven ecom\\bakeecom\\src\\main\\webapp\\resources\\product_images\\"+filename)));  
        bout.write(barr);  
        bout.flush();  
        bout.close();  
        src="/resources/product_images/"+filename;
        System.out.println("selected image:"+src);
         
        }
        catch(Exception e)
        {
        	System.out.println(e);
        }  
        w.addAttribute("prod", prod);
		proValid.validate(prod, bind);
		if(bind.hasErrors())
		{
			return new ModelAndView ("form");
		}
		else
		{
			productService.insertRow(prod,src);
			return new ModelAndView("form","img",src).addObject("command", new Product());
		}
		}
	
	@RequestMapping("/gridlis")
	public@ResponseBody ModelAndView listProduct(ModelMap m)
	{
	List<Product> productList=productService.getList();
	/*m.addAttribute("chkMsg", "hello");*/
	 Gson gson = new Gson();
	 String conv = gson.toJson(productList);
	 m.addAttribute("prodat", conv);
	 System.out.println("Json"+conv);
	return new ModelAndView("gridlis","productList",productList);
	}
	
	@RequestMapping("/aboutus")
	public String gotoindex() {
		return "aboutus";
	}
	@RequestMapping("/edu")
	public ModelAndView gotoProduct(@ModelAttribute ("prod")Product prod,Model m)
	{
		List prodLt=productService.getList();
		return new ModelAndView("edu","Products",prodLt);
	}
	
	@RequestMapping("/home1")
	public String gotohome1() {
		return "home1";
	}
	@RequestMapping("/login2")
	public String gotologin() {
		return "login2";
	}
	@RequestMapping("/regis2")
	public String gotoregis() {
		return "regis2";
	}
	@RequestMapping("/productviewnew")
	public String gotoproductviewnew() {
		return "productviewnew";
	}
	
	

@RequestMapping("/edit")
public ModelAndView editProd(@ModelAttribute("prod")Product prod,@RequestParam int id)
{
	prod=productService.getRowById(id);
	ModelAndView mv=new ModelAndView("edit","prdList",prod);
	mv.setViewName("edit");
	
	return mv.addObject("command", prod);
}

@RequestMapping(value="updateProduct",method=RequestMethod.POST)
public ModelAndView updateProd(@ModelAttribute("prod")Product prod)
{
//prod=dataService.getRowById(id);
productService.updateRow(prod);
return new ModelAndView("redirect:gridlis");
//	return new ModelAndView("list","prod");
}

@RequestMapping("/deleteProduct")
public ModelAndView deleteProd(@RequestParam int id)
{
productService.deleteRow(id);
	return new ModelAndView("redirect:gridlis");
}
@RequestMapping("/productview")
public ModelAndView listProducts(ModelMap m)
{
List<Product> productList=productService.getList();
m.addAttribute("chkMsg", "hello");
return new ModelAndView("productview","productList", productList);
}


}