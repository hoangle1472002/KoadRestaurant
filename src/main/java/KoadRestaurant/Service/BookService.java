package KoadRestaurant.Service;

import KoadRestaurant.Dao.BookDao;
import KoadRestaurant.Model.Entity.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class BookService implements  IBookService{
    @Autowired
    BookDao bookDao = new BookDao();
    @Override
    public int AddBook(Book book) {
        return bookDao.AddBook(book);
    }
    @Override
    public List<Book> GetAllBookByIdUser(int id_user) {
        return bookDao.GetAllBookByIdUser(id_user);
    }
}
