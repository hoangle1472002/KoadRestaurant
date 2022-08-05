package KoadRestaurant.Model.Entity;

import KoadRestaurant.Model.Entity.Product;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductMapper implements RowMapper<Product> {
    @Override
    public Product mapRow(ResultSet resultSet, int i) throws SQLException {
        Product product = new Product();
        product.setId(resultSet.getInt("id"));
        product.setId_category(resultSet.getInt("id_category"));
        product.setName(resultSet.getString("name"));
        product.setDescription(resultSet.getString("description"));
        product.setPrice(resultSet.getDouble("price"));
        product.setImg(resultSet.getString("img"));
        product.setHighlight(resultSet.getBoolean("highlight"));
        return product;
    }
}
