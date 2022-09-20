package KoadRestaurant.Controller.UserController;

import KoadRestaurant.Dao.CategoryDao;
import KoadRestaurant.Model.Entity.Book;
import KoadRestaurant.Model.Entity.Product;
import KoadRestaurant.Model.Entity.User;
import KoadRestaurant.Service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class BookController extends  BaseController {
    @Autowired
    CategoryDao categoryDao = new CategoryDao();
    @Autowired
    BookService bookService = new BookService();



    @RequestMapping(value = "/AddBook", method = RequestMethod.GET)
    public ModelAndView Get_AddBook() {
        _mv.setViewName("user/reservation");
        _mv.addObject("book", new Book());
        return _mv;
    }

    @RequestMapping(value= "/AddBook", method = RequestMethod.POST )
    public ModelAndView AddProduct(HttpSession session,@ModelAttribute("book") Book book, HttpServletRequest request){
        User user = (User)session.getAttribute("LoginInfo");
        if(user == null){
            _mv.setViewName("user/login");
            return _mv;
        }
        book.setId_user(user.getId());
        int add =bookService.AddBook(book);
        _mv.setViewName("user/infoUser/userBook");
        return _mv;

    }


}
