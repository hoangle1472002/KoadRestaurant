package KoadRestaurant.Service;

import KoadRestaurant.Model.DTO.CartDto;
import KoadRestaurant.Model.Entity.Bill;
import KoadRestaurant.Model.Entity.BillDetail;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public interface IBillService {
    public int Addbill(Bill bill);
    public void AddBillDetail(HashMap<Integer, CartDto> cart);
    public List<Bill> GetAllBills();
    public int DeleteBill(int id);
    public List<Bill> GetAllBillbyIdUser(int id_user);
}
