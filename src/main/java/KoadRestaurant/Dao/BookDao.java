package KoadRestaurant.Dao;

import KoadRestaurant.Model.Entity.Book;
import KoadRestaurant.Model.Entity.BookMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BookDao extends BaseDao {
    public int AddBook(Book book){
        String sql = "INSERT INTO book (id_user,name_user,date,time,guest,message)" +
                " values ('" + book.getId_user() +"',' "+ book.getName_user() +"','"+book.getDate() +"','"+book.getTime()+"',"+book.getGuest()+",'"+book.getMessage()+"')";
        int insert = _jdbcTemplate.update(sql);
        return insert;
    }
    public List<Book> GetAllBookByIdUser(int id_user){
        String sql = "Select * from book where id_user =" + id_user;
        List<Book> data = _jdbcTemplate.query(sql,new BookMapper());
        return data;
    }

    public List<Book> GetAllBook(){
        String sql = "Select * from book ";
        List<Book> data = _jdbcTemplate.query(sql,new BookMapper());
        return data;
    }
    public int DeleteBook(int id){
        String sql = "DELETE from book where id=" +id;
        int delete = _jdbcTemplate.update(sql);
        return delete;
    }

}
