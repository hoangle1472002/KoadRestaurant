package KoadRestaurant.Dao;

import KoadRestaurant.Model.Entity.Category;
import KoadRestaurant.Model.Entity.CategoryMapper;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class CategoryDao extends  BaseDao {
    private String SqlGetAllCategory(){
        StringBuffer sql = new StringBuffer();
        sql.append("SELECT ");
        sql.append(" id  ");
        sql.append(", name ");
        sql.append("from category ");
        return sql.toString();
    }
    public List<Category> GetAllCategory(){
        String sql = SqlGetAllCategory();
        List<Category> categoryList = _jdbcTemplate.query(sql,new CategoryMapper());
        return categoryList;
    }
}
