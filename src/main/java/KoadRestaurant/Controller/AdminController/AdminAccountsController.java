package KoadRestaurant.Controller.AdminController;

import KoadRestaurant.Dao.CategoryDao;
import KoadRestaurant.Service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class AdminAccountsController extends AdminBaseController {
    @Autowired
    public CategoryDao categoryDao = new CategoryDao();
    @Autowired
    public AccountService accountService = new AccountService();

    @RequestMapping(value= {"/admin/ManageAccounts","/admin"})
    public ModelAndView Accounts(){
        _mv = new ModelAndView("admin/userAccounts");
        _mv.addObject("categoryList",categoryDao.GetAllCategory());
        _mv.addObject("UserAccounts",accountService.GetAllUserAccounts());
        return _mv;
    }
    @RequestMapping(value= "/admin/DeleteAccount/{id}")
    public String DeleteAccounts(@PathVariable int id, HttpServletRequest request){
        _mv = new ModelAndView("admin/userAccounts");
        accountService.DeleteAccountbyId(id);
        return "redirect:" + request.getHeader("Referer");
    }
}
