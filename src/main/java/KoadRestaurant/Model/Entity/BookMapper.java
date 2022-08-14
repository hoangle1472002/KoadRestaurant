package KoadRestaurant.Model.Entity;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class BookMapper implements RowMapper<Book> {
    @Override
    public Book mapRow(ResultSet rs, int rowNum) throws SQLException {
        Book book = new Book();
        book.setId(rs.getInt("id"));
        book.setId_user(rs.getInt("id_user"));
        book.setName_user(rs.getString("name_user"));
        book.setDate(rs.getDate("date"));
        book.setTime(rs.getTime("time"));
        book.setMessage(rs.getString("message"));
        return book;
    }
}
