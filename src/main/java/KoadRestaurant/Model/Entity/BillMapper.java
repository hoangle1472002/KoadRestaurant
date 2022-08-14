package KoadRestaurant.Model.Entity;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class BillMapper  implements RowMapper<Bill> {
    @Override
    public Bill mapRow(ResultSet rs, int rowNum) throws SQLException {
        Bill bill = new Bill();
        bill.setId(rs.getInt("id"));
        bill.setId_user(rs.getInt("id_user"));
        bill.setName_user(rs.getString("name_user"));
        bill.setPhone(rs.getString("phone"));
        bill.setAddress(rs.getString("address"));
        bill.setEmail(rs.getString("email"));
        bill.setQuantity(rs.getInt("quantity"));
        bill.setTotal(rs.getDouble("total"));
        return bill;
    }
}
