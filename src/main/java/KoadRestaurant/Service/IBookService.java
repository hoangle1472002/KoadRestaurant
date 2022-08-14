package KoadRestaurant.Service;

import KoadRestaurant.Model.Entity.Book;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface IBookService {
    public int AddBook(Book book);
    public List<Book> GetAllBookByIdUser(int id_user);
}
