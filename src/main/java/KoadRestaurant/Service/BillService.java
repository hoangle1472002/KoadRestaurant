package KoadRestaurant.Service;

import KoadRestaurant.Dao.BillDao;
import KoadRestaurant.Model.DTO.CartDto;
import KoadRestaurant.Model.Entity.Bill;
import KoadRestaurant.Model.Entity.BillDetail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class BillService implements IBillService{
    @Autowired
    BillDao billDao = new BillDao();
    @Override
    public int Addbill(Bill bill) {
        return billDao.AddBill(bill);
    }

    @Override
    public void AddBillDetail(HashMap<Integer, CartDto> cart) {
        int idBill = billDao.GetIdLastBill();
        for(Map.Entry<Integer,CartDto> itemCart : cart.entrySet()){
            BillDetail billDetail = new BillDetail();
            billDetail.setId_bill(idBill);
            billDetail.setId_product(itemCart.getValue().getProduct().getId());
            billDetail.setQuantity(itemCart.getValue().getQuantity());
            billDetail.setTotal(itemCart.getValue().getTotalPrice());
            billDao.AddBillDetail(billDetail);
        }
    }

    @Override
    public List<Bill> GetAllBills() {
        return billDao.GetAllBills();
    }

    @Override
    public int DeleteBill(int id) {
        return billDao.DeleteBill(id);
    }
}
