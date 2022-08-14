package KoadRestaurant.Controller.AdminController;

import KoadRestaurant.Dao.CategoryDao;
import KoadRestaurant.Service.AccountService;
import KoadRestaurant.Service.BillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
@Controller
public class AdminBillController extends AdminBaseController {
    @Autowired
    public CategoryDao categoryDao = new CategoryDao();
    @Autowired
    public BillService billService = new BillService();

    @RequestMapping(value= "/admin/ManageBills")
    public ModelAndView Accounts(){
        _mv = new ModelAndView("admin/userBills");
        _mv.addObject("categoryList",categoryDao.GetAllCategory());
        _mv.addObject("UserBills",billService.GetAllBills());
        return _mv;
    }
    @RequestMapping(value= "/admin/DeleteBill/{id}")
    public String DeleteAccounts(@PathVariable int id, HttpServletRequest request){
        _mv = new ModelAndView("admin/userBills");
        billService.DeleteBill(id);
        return "redirect:" + request.getHeader("Referer");
    }
}
