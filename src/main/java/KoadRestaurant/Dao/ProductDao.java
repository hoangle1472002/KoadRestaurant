package KoadRestaurant.Dao;
import KoadRestaurant.Model.Entity.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ProductDao extends BaseDao {
    private StringBuffer SqlString() {
        StringBuffer sql = new StringBuffer();
        sql.append("SELECT ");
        sql.append("p.id  ");
        sql.append(", p.id_category ");
        sql.append(", p.description ");
        sql.append(", p.name ");
        sql.append(", p.price ");
        sql.append(", p.img ");
        sql.append(", p.highlight ");
        sql.append("FROM ");
        sql.append("product AS p ");
        sql.append("INNER JOIN ");
        sql.append("category AS c ");
        sql.append("ON p.id_category = c.id ");
        return sql;
    }
    private String SqlProductsByCategory(String category) {
        StringBuffer sql = SqlString();
        sql.append("WHERE 1 = 1 ");
        sql.append("AND c.name = '" + category + "' ");
        return sql.toString();
    }

    private String SqlProductsByCategoryPaginate(String category,int start,int totalPage) {
        StringBuffer sql = SqlString();
        sql.append("WHERE 1 = 1 ");
        sql.append("AND c.name = '" + category + "' ");
        sql.append( " LIMIT " + start + " , " + totalPage +" ");
        return sql.toString();
    }

    private String SqlProductById(int id){
        StringBuffer sql = SqlString();
        sql.append("WHERE 1 = 1 ");
        sql.append("AND p.id = " + id + " ");
        return sql.toString();
    }

    public Product GetProductById(int id){
        String sql = SqlProductById(id).toString();
        Product product = _jdbcTemplate.queryForObject(sql,new ProductMapper());
        return product;
    }

    public List<Product> GetAllProductByCategory(String category){
        String sql = SqlProductsByCategory(category);
        List<Product> data = _jdbcTemplate.query(sql,new ProductMapper());
        return data;
    }
    public List<Product> GetAllProductByCategoryPaginate(String category,int start,int totalProductPage){
        String sql = SqlProductsByCategoryPaginate(category,start,totalProductPage);
        List<Product> data = _jdbcTemplate.query(sql,new ProductMapper());
        return data;
    }

    public List<Product> GetAllProducts(){
        String sql = "Select * from product";
        List<Product> listProduct = _jdbcTemplate.query(sql,new ProductMapper());
        return listProduct;
    }

    public int DeleteProduct(int id){
        String sql = "Delete from product Where id=" +id;
        int delete = _jdbcTemplate.update(sql);
        return delete;
    }

    public int AddProduct(Product product) {
        StringBuffer sql = new StringBuffer();
        sql.append("INSERT ");
        sql.append("INTO product ");
        sql.append("( ");
        sql.append(" id_category, ");
        sql.append(" name, ");
        sql.append(" description, ");
        sql.append(" price, ");
        sql.append(" img ");
        sql.append(")");
        sql.append(" VALUES ");
        sql.append(" ( ");
        sql.append(" '"+ product.getId_category()  +"', ");
        sql.append(" '"+ product.getName()  +"', ");
        sql.append(" '"+ product.getDescription()  +"', ");
        sql.append(" '"+ product.getPrice()  +"', ");
        sql.append(" '"+ product.getImg()  +"' ");
        sql.append(" ) ");


        int insert = _jdbcTemplate.update(sql.toString());
        return insert;
    }
    public int UpdateProduct(int idProduct,Product product){
        String sql = "update product " +
                "set id_category= "+product.getId_category() +",name='"+ product.getName()+"'," +
                "description='"+ product.getDescription()+"',price = "+product.getPrice() +",img='"+ product.getImg()+"'\n" +
                "where id =" +idProduct;
        int update = _jdbcTemplate.update(sql);
        return update;

    }
}
