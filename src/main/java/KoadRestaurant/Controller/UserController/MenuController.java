package KoadRestaurant.Controller.UserController;
import KoadRestaurant.Dao.CategoryDao;
import KoadRestaurant.Model.DTO.PaginateDto;
import KoadRestaurant.Service.PaginateService;
import KoadRestaurant.Service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MenuController extends  BaseController {
    @Autowired
    private ProductService productService = new ProductService();
    @Autowired
    private PaginateService paginateService = new PaginateService();
    @Autowired
    public CategoryDao categoryDao = new CategoryDao();
    @RequestMapping("/menu/{name}")
    public ModelAndView Menu(@PathVariable String name){
        _mv.setViewName("user/menu");
        _mv.addObject("category",name);
        _mv.addObject("categoryList",categoryDao.GetAllCategory());

        int total = productService.GetAllProductByCategory(name).size();
        int totalProductPage = 3;
        PaginateDto paginateInfo = paginateService.GetInfoPaginate(total,1,totalProductPage);
        _mv.addObject("paginateInfo",paginateInfo);
        _mv.addObject("productsPaginate",productService.GetAllProductbyCategoryPaginate(name, paginateInfo.getStart(),totalProductPage));

        return _mv;
    }
    @RequestMapping("/menu/{name}/{currentPage}")
    public ModelAndView Menu(@PathVariable String name,@PathVariable String currentPage){
        _mv.setViewName("user/menu");
        _mv.addObject("category",name);
        _mv.addObject("categoryList",categoryDao.GetAllCategory());

        int total = productService.GetAllProductByCategory(name).size();
        int totalProductPage = 3;
        PaginateDto paginateInfo = paginateService.GetInfoPaginate(total,Integer.parseInt(currentPage),totalProductPage);
        _mv.addObject("paginateInfo",paginateInfo);
        _mv.addObject("productsPaginate",productService.GetAllProductbyCategoryPaginate(name, paginateInfo.getStart(),totalProductPage));

        return _mv;
    }
}
