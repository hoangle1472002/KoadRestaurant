package KoadRestaurant.Service;
import KoadRestaurant.Dao.ProductDao;
import KoadRestaurant.Model.Entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ProductService implements IProductService{
    @Autowired
    ProductDao productDao = new ProductDao();

    @Override
    public List<Product> GetAllProductByCategory(String category) {
        return productDao.GetAllProductByCategory(category);
    }

    @Override
    public List<Product> GetAllProductbyCategoryPaginate(String category,int start, int totalProductPage ) {
        return productDao.GetAllProductByCategoryPaginate(category,start,totalProductPage);
    }


}
