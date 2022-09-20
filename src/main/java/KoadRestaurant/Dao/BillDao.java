package KoadRestaurant.Dao;

import KoadRestaurant.Model.Entity.*;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BillDao extends BaseDao {
    public int AddBill(Bill bill) {
        StringBuffer sql = new StringBuffer();
        sql.append("INSERT ");
        sql.append("INTO bill ");
        sql.append("( ");
        sql.append(" id_user, ");
        sql.append(" name_user, ");
        sql.append(" phone, ");
        sql.append(" address, ");
        sql.append(" total, ");
        sql.append(" quantity, ");
        sql.append(" email ");
        sql.append(")");
        sql.append(" VALUES ");
        sql.append(" ( ");
        sql.append(" '"+ bill.getId_user()  +"', ");
        sql.append(" '"+ bill.getName_user()  +"', ");
        sql.append(" '"+ bill.getPhone()  +"', ");
        sql.append(" '"+ bill.getAddress()  +"', ");
        sql.append(" '"+ bill.getTotal()  +"', ");
        sql.append(" '"+ bill.getQuantity()  +"', ");
        sql.append(" '"+ bill.getEmail()  +"' ");
        sql.append(" ) ");

        int insert = _jdbcTemplate.update(sql.toString());
        return insert;
    }
    public int GetIdLastBill(){
        int id= 0;
        StringBuffer sql = new StringBuffer();
        sql.append("select * from bill order by id desc limit 1");
        BillEntity bill =_jdbcTemplate.queryForObject(sql.toString(),new BillEntityMapper());
        id = bill.getId();
        return id;
    }
    public int AddBillDetail(BillDetail billDetail) {
        StringBuffer sql = new StringBuffer();
        sql.append("INSERT ");
        sql.append("INTO billdetail ");
        sql.append("( ");
        sql.append(" id_bill, ");
        sql.append(" id_product, ");
        sql.append(" quantity, ");
        sql.append(" total ");
        sql.append(")");
        sql.append(" VALUES ");
        sql.append(" ( ");
        sql.append(" '"+ billDetail.getId_bill()  +"', ");
        sql.append(" '"+ billDetail.getId_product()  +"', ");
        sql.append(" '"+ billDetail.getQuantity()  +"', ");
        sql.append(" '"+ billDetail.getTotal()  +"' ");
        sql.append(" ) ");

        int insert = _jdbcTemplate.update(sql.toString());
        return insert;
    }

    public List<Bill> GetAllBills(){
        String sql = "select b.id, b.id_user,p.name,bd.quantity,b.name_user,b.phone,b.email,b.address,bd.total\n" +
                "from bill as b inner join billdetail as bd on b.id = bd.id_bill inner join product as p on p.id = bd.id_product";
        List<Bill> listBill = _jdbcTemplate.query(sql,new BillMapper());
        return listBill;
    }

    public List<Bill> GetAllBillByIdUser(int id_user){
        String sql = "select b.id, b.id_user,p.name,bd.quantity,b.name_user,b.phone,b.email,b.address,bd.total " +
                "from bill as b inner join billdetail as bd on b.id = bd.id_bill inner join product as p on p.id = bd.id_product where id_user =" +  id_user;
        List<Bill> data = _jdbcTemplate.query(sql,new BillMapper());
        return data;
    }

    public int DeleteBill(int id){
        String sql = "Delete from bill Where id=" +id;
        int delete = _jdbcTemplate.update(sql);
        return delete;
    }

}
