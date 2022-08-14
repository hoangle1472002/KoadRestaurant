package KoadRestaurant.Service;
import KoadRestaurant.Model.Entity.Bill;
import KoadRestaurant.Model.Entity.Product;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface IProductService {
    public List<Product> GetAllProductByCategory(String category);
    public List<Product> GetAllProductbyCategoryPaginate(String category,int start,int totalProductPage);
    public List<Product> GetAllProducts();
    public int DeleteProduct(int id);
}
