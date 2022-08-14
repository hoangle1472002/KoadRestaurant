package KoadRestaurant.Controller.UserController;

import KoadRestaurant.Dao.CategoryDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController extends BaseController{
    @Autowired
    public CategoryDao categoryDao = new CategoryDao();
    @RequestMapping("/")
    public ModelAndView Index(){
        _mv = new ModelAndView("user/index");
        _mv.addObject("categoryList",categoryDao.GetAllCategory());
        return _mv;
    }

}
