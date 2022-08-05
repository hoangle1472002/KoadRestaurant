package KoadRestaurant.Controller;

import KoadRestaurant.Dao.CategoryDao;
import KoadRestaurant.Model.Entity.Category;
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
