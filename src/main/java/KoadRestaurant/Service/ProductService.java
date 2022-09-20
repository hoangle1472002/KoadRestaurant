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

    @Override
    public List<Product> GetAllProducts() {
        return productDao.GetAllProducts();
    }

    @Override
    public int DeleteProduct(int id) {
        return productDao.DeleteProduct(id);
    }

    @Override
    public int AddProduct(Product product) {
        return productDao.AddProduct(product);
    }

    @Override
    public int EditProduct(int idProduct,Product product) {
        return productDao.UpdateProduct(idProduct,product);
    }

    @Override
    public Product GetProductById(int id) {
        return productDao.GetProductById(id);
    }


}
