package KoadRestaurant.Controller.AdminController;

import KoadRestaurant.Dao.CategoryDao;
import KoadRestaurant.Model.Entity.User;
import KoadRestaurant.Service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class AdminAccountsController extends AdminBaseController {
    @Autowired
    public CategoryDao categoryDao = new CategoryDao();
    @Autowired
    public AccountService accountService = new AccountService();

    @RequestMapping(value= {"/admin/ManageAccounts","/admin"})
    public ModelAndView Accounts(HttpSession session){
//        User user = (User) session.getAttribute("LoginInfo");
//        if(user == null){
//            _mv.setViewName("user/login");
//            return _mv;
//        }
        _mv = new ModelAndView("admin/userAccounts");
        _mv.addObject("categoryList",categoryDao.GetAllCategory());
        _mv.addObject("UserAccounts",accountService.GetAllUserAccounts());
        return _mv;
    }
    @RequestMapping(value= "/admin/DeleteAccount/{id}")
    public String DeleteAccounts(@PathVariable int id, HttpServletRequest request){
        accountService.DeleteAccountbyId(id);
        return "redirect:" + request.getHeader("Referer");
    }

    @RequestMapping(value="/search")
    public ModelAndView SearchAccByName(@RequestParam("name") String name){
        _mv.addObject("UserAccounts",accountService.GetAccountByName(name));
        _mv.setViewName("admin/userAccounts");
        return _mv;
    }
}
