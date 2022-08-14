package KoadRestaurant.Controller.AdminController;

import KoadRestaurant.Dao.CategoryDao;
import KoadRestaurant.Service.BillService;
import KoadRestaurant.Service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
@Controller
public class AdminProductController extends  AdminBaseController{
    @Autowired
    public CategoryDao categoryDao = new CategoryDao();
    @Autowired
    public ProductService productService = new ProductService();

    @RequestMapping(value= "/admin/ManageProducts")
    public ModelAndView Product(){
        _mv = new ModelAndView("admin/products");
        _mv.addObject("categoryList",categoryDao.GetAllCategory());
        _mv.addObject("ProductsList",productService.GetAllProducts());
        return _mv;
    }
    @RequestMapping(value= "/admin/DeleteProduct/{id}")
    public String DeleteProduct(@PathVariable int id, HttpServletRequest request){
        _mv = new ModelAndView("admin/products");
        productService.DeleteProduct(id);
        return "redirect:" + request.getHeader("Referer");
    }
}
