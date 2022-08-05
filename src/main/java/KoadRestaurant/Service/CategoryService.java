package KoadRestaurant.Service;

import KoadRestaurant.Dao.CategoryDao;
import KoadRestaurant.Model.Entity.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CategoryService implements  ICategoryService {
    @Autowired
    CategoryDao categoryDao = new CategoryDao();
    @Override
    public List<Category> GetAllCategory() {
        return categoryDao.GetAllCategory();
    }
}
