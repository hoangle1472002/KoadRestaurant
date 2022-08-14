package KoadRestaurant.Controller.UserController;

import KoadRestaurant.Dao.CategoryDao;
import KoadRestaurant.Model.Entity.Book;
import KoadRestaurant.Model.Entity.User;
import KoadRestaurant.Service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
public class BookController extends  BaseController {
    @Autowired
    CategoryDao categoryDao = new CategoryDao();
    @Autowired
    BookService bookService = new BookService();


    @RequestMapping(value = "/userBook")
    public ModelAndView UserBook(HttpSession session){
        _mv.setViewName("user/infoUser/userBook");
        return _mv;
    }
    @RequestMapping(value = "/reservation", method = RequestMethod.GET)
    public ModelAndView GetBook() {
        _mv.setViewName("user/reservation");
        _mv.addObject("categoryList",categoryDao.GetAllCategory());
        _mv.addObject("book", new Book());
        return _mv;
    }
    @RequestMapping(value = "/reservation", method = RequestMethod.POST)
    public ModelAndView PostBook(HttpSession session, @ModelAttribute("book") Book book) {
        User check = (User)session.getAttribute("LoginInfo") ;
        if (check != null) {
            _mv.setViewName("redirect:/login");
        } else {
            book.setId_user(check.getId());
            int insert = bookService.AddBook(book);
            _mv.setViewName("user/infoUser/userBook");
        }
        return _mv;
    }

}
