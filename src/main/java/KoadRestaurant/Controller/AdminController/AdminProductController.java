package KoadRestaurant.Controller.AdminController;

import KoadRestaurant.Dao.CategoryDao;
import KoadRestaurant.Model.Entity.Product;
import KoadRestaurant.Service.BillService;
import KoadRestaurant.Service.CategoryService;
import KoadRestaurant.Service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
@Controller
public class AdminProductController extends  AdminBaseController{
    @Autowired
    public CategoryService categoryService = new CategoryService();
    @Autowired
    public ProductService productService = new ProductService();

    @RequestMapping(value= "/admin/ManageProducts")
    public ModelAndView Product(){
        _mv = new ModelAndView("admin/products");
        _mv.addObject("categoryList",categoryService.GetAllCategory());
        _mv.addObject("ProductsList",productService.GetAllProducts());
        return _mv;
    }
    @RequestMapping(value= "/admin/DeleteProduct/{id}")
    public String DeleteProduct(@PathVariable int id, HttpServletRequest request){
        _mv = new ModelAndView("admin/products");
        productService.DeleteProduct(id);
        return "redirect:" + request.getHeader("Referer");
    }

    @RequestMapping(value= "/admin/AddProduct", method = RequestMethod.GET )
    public ModelAndView Get_AddProduct(){
        _mv = new ModelAndView("admin/newProduct");
        _mv.addObject("categoryList",categoryService.GetAllCategory());
        _mv.addObject("product",new Product());
        return _mv;
    }

    @RequestMapping(value= "/admin/AddProduct", method = RequestMethod.POST )
    public String AddProduct(@ModelAttribute("product") Product product, HttpServletRequest request){
        int add = productService.AddProduct(product);
        return "redirect:/admin/ManageProducts";
    }

    @RequestMapping(value= "/admin/EditProduct/{id}", method = RequestMethod.GET )
    public ModelAndView Get_EditProduct(@PathVariable int id){
        Product product = productService.GetProductById(id);
        _mv.addObject("id",product.getId());
        _mv = new ModelAndView("admin/editProduct");
        _mv.addObject("categoryList",categoryService.GetAllCategory());
        _mv.addObject("product",product);
        return _mv;
    }

    @RequestMapping(value= "/admin/EditProduct/{id}", method = RequestMethod.POST )
    public String EditProduct(@PathVariable int id,@ModelAttribute("product") Product product) {
      //  Product product = productService.GetProductById(id);
        int edit = productService.EditProduct(id,product);
        return "redirect:/admin/ManageProducts";
    }
}
