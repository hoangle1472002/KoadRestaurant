package KoadRestaurant.Service;

import KoadRestaurant.Dao.CartDao;
import KoadRestaurant.Model.DTO.CartDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
@Service
public class CartService implements ICartService{
    @Autowired
    CartDao cartDao = new CartDao();

    @Override
    public HashMap<Integer, CartDto> AddCart(int id, HashMap<Integer, CartDto> cart) {
        return cartDao.AddCart(id,cart);
    }

    @Override
    public HashMap<Integer, CartDto> EditCart(int id, int quantity, HashMap<Integer, CartDto> cart) {
        return cartDao.EditCart(id,quantity,cart);
    }

    @Override
    public HashMap<Integer, CartDto> DeleteCart(int id, HashMap<Integer, CartDto> cart) {
        return cartDao.DeleteCart(id,cart);
    }

    @Override
    public int TotalQuantity(HashMap<Integer, CartDto> cart) {
        return cartDao.TotalQuantity(cart);
    }

    @Override
    public double TotalPrice(HashMap<Integer, CartDto> cart) {
        return cartDao.TotalPrice(cart);
    }
}
