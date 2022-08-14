package KoadRestaurant.Controller.UserController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NavigationController extends  BaseController {

    @RequestMapping("/about")
    public ModelAndView About(){
        _mv.setViewName("user/about");
        return _mv;
    }

    @RequestMapping("/blog")
    public ModelAndView Blog(){
        _mv.setViewName("user/blog");
        return _mv;
    }
    @RequestMapping("/post")
    public ModelAndView Post(){
        _mv.setViewName("user/post");
        return _mv;
    }
}
