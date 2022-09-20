package KoadRestaurant.Controller.AdminController;

import KoadRestaurant.Service.BillService;
import KoadRestaurant.Service.BookService;
import KoadRestaurant.Service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class AdminBookController  extends  AdminBaseController{
    @Autowired
    public CategoryService categoryService = new CategoryService();
    @Autowired
    public BookService bookService = new BookService();

    @RequestMapping(value= "/admin/ManageBooks")
    public ModelAndView Accounts(){
        _mv = new ModelAndView("admin/userBooks");
        _mv.addObject("categoryList",categoryService.GetAllCategory());
        _mv.addObject("UserBooks",bookService.GetAllBook());
        return _mv;
    }
    @RequestMapping(value= "/admin/DeleteBook/{id}")
    public String DeleteAccounts(@PathVariable int id, HttpServletRequest request){
        _mv = new ModelAndView("admin/userBooks");
        bookService.DeleteBook(id);
        return "redirect:" + request.getHeader("Referer");
    }


}
