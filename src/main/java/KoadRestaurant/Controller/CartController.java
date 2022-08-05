package KoadRestaurant.Controller;

import KoadRestaurant.Dao.CategoryDao;
import KoadRestaurant.Model.DTO.CartDto;
import KoadRestaurant.Service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
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
        return "redirect:" + request.getHeader("Referer");
    }
    @RequestMapping(value="EditCart/{id}/{quantity}")
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
}
