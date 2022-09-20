package KoadRestaurant.Controller.UserController;

import KoadRestaurant.Dao.CategoryDao;
import KoadRestaurant.Model.DTO.CartDto;
import KoadRestaurant.Model.Entity.Bill;
import KoadRestaurant.Model.Entity.User;
import KoadRestaurant.Service.BillService;
import KoadRestaurant.Service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;

@Controller
public class CartController extends  BaseController {
    @Autowired
    public CategoryDao categoryDao = new CategoryDao();
    @Autowired
    private CartService cartService = new CartService();
    @Autowired
    BillService billService = new BillService();


    @RequestMapping(value="/Cart")
    public ModelAndView Index(){
        _mv = new ModelAndView("user/cartlist");
        _mv.addObject("categoryList",categoryDao.GetAllCategory());
        return _mv;
    }
    @RequestMapping(value="/AddCart/{id}")
    public String AddCart(@PathVariable int id, HttpSession session, HttpServletRequest request){
        //Get cart by session
        HashMap<Integer, CartDto> cart = ( HashMap<Integer, CartDto>)session.getAttribute("Cart");
        if(cart == null){
            cart = new  HashMap<Integer, CartDto>();
        }
        cart = cartService.AddCart(id,cart);
        //Update cart
        session.setAttribute("Cart",cart);
        session.setAttribute("TotalQuantityCart", cartService.TotalQuantity(cart));
        session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
        return "redirect:" + request.getHeader("Referer");
    }
    @RequestMapping(value="/EditCart/{id}/{quantity}")
    public String EditCart(HttpServletRequest request,HttpSession session,@PathVariable int id,@PathVariable int quantity) {
        HashMap<Integer,CartDto> cart = (HashMap<Integer,CartDto>)session.getAttribute("Cart");
        if(cart == null)
            cart = new HashMap<Integer,CartDto>();

        cart = cartService.EditCart(id,quantity, cart);
        session.setAttribute("Cart", cart);
        session.setAttribute("TotalQuantityCart", cartService.TotalQuantity(cart));
        session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
        //Back link
        return "redirect:" + request.getHeader("Referer");

    }
    @RequestMapping(value="/DeleteCart/{id}")
    public String DeleteCart(@PathVariable int id, HttpSession session, HttpServletRequest request){
        //Get cart by session
        HashMap<Integer, CartDto> cart = ( HashMap<Integer, CartDto>)session.getAttribute("Cart");
        if(cart == null){
            cart = new  HashMap<Integer, CartDto>();
        }
        cart = cartService.DeleteCart(id,cart);
        //Update cart
        session.setAttribute("Cart",cart);
        session.setAttribute("TotalQuantityCart",cartService.TotalQuantity(cart));
        session.setAttribute("TotalPriceCart",cartService.TotalPrice(cart));
        return "redirect:" + request.getHeader("Referer");
    }

    @RequestMapping(value="/checkout", method = RequestMethod.GET)
    public ModelAndView Checkout(HttpServletRequest request,HttpSession session){
        _mv.setViewName("user/checkout");
        Bill bill = new Bill();
        User userLogin =  (User)session.getAttribute("LoginInfo");
        HashMap<Integer, CartDto> cart = ( HashMap<Integer, CartDto>)session.getAttribute("Cart");
        session.setAttribute("Cart",cart);
        session.setAttribute("TotalQuantityCart",cartService.TotalQuantity(cart));
        session.setAttribute("TotalPriceCart",cartService.TotalPrice(cart));

        if(userLogin == null){
            _mv.setViewName("user/login");
            return _mv;
        }
        if(userLogin != null){
            bill.setId_user(userLogin.getId());
            bill.setName_user(userLogin.getName());
            bill.setEmail(userLogin.getEmail());
            bill.setAddress(userLogin.getAddress());
            bill.setPhone(userLogin.getPhone());
            bill.setTotal(cartService.TotalPrice(cart));
            bill.setQuantity(cartService.TotalQuantity(cart));
        }

        _mv.addObject("bill",bill);
        return _mv;
    }
    @RequestMapping(value="/checkout", method = RequestMethod.POST)
    public String CheckoutBill( HttpSession session, @ModelAttribute("bill") Bill bill){
        User userLogin =  (User)session.getAttribute("LoginInfo");
        HashMap<Integer,CartDto> cart = (HashMap<Integer, CartDto>) session.getAttribute("Cart");
        if(userLogin != null){
            bill.setId_user(userLogin.getId());
            bill.setTotal(cartService.TotalPrice(cart));
            bill.setQuantity(cartService.TotalQuantity(cart));
            if(billService.Addbill(bill) > 0){
                billService.AddBillDetail(cart);
            }
            session.removeAttribute("Cart");
            session.removeAttribute("TotalQuantityCart");
            session.removeAttribute("TotalPriceCart");
        }


        return "redirect:/" ;
    }
}
