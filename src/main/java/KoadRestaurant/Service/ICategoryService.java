package KoadRestaurant.Service;

import KoadRestaurant.Model.Entity.Category;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ICategoryService {
    public List<Category> GetAllCategory();
}
