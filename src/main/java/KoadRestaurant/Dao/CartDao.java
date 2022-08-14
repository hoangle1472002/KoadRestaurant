package KoadRestaurant.Dao;

import KoadRestaurant.Model.DTO.CartDto;
import KoadRestaurant.Model.Entity.Product;
import com.google.protobuf.MapEntry;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class CartDao {
    @Autowired
    ProductDao productDao = new ProductDao();
    public HashMap<Integer,CartDto> AddCart(int id, HashMap<Integer,CartDto> cart){
        CartDto cartItem = new CartDto();
        Product product = productDao.GetProductById(id);
        if(product != null && cart.containsKey(id)) {
            cartItem = cart.get(id);
            cartItem.setQuantity(cartItem.getQuantity() + 1);
            cartItem.setTotalPrice(cartItem.getQuantity() * cartItem.getProduct().getPrice());
        }
        else {
            cartItem.setProduct(product);
            cartItem.setQuantity(1);
            cartItem.setTotalPrice(product.getPrice());
        }
        cart.put(id, cartItem);
        return cart;
    }

    public HashMap<Integer,CartDto> EditCart(int id,int quantity, HashMap<Integer,CartDto> cart){
        CartDto cartItem = new CartDto();
        if(cart == null)
            return cart;
        if(cart.containsKey(id)){
            cartItem = cart.get(id);
            cartItem.setQuantity(quantity);
            double totalPrice = cartItem.getProduct().getPrice() * quantity;
            cartItem.setTotalPrice(totalPrice);
        }
        cart.put(id,cartItem);
        return cart;
    }

    public HashMap<Integer,CartDto> DeleteCart(int id, HashMap<Integer,CartDto> cart){
        if(cart.containsKey(id))
            cart.remove(id);
        return cart;
    }

    public int TotalQuantity(HashMap<Integer,CartDto> cart){
        int totalQuantity =0;
        for (Map.Entry<Integer,CartDto> item : cart.entrySet()){
                totalQuantity += item.getValue().getQuantity();
        }
        return totalQuantity;
    }
    public double TotalPrice(HashMap<Integer,CartDto> cart){
        double totalPrice =0;
        for (Map.Entry<Integer,CartDto> item : cart.entrySet()){
            totalPrice += item.getValue().getTotalPrice();
        }
        return totalPrice;
    }
}
