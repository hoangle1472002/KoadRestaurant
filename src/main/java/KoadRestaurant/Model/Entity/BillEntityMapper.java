package KoadRestaurant.Model.Entity;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class BillEntityMapper implements RowMapper<BillEntity> {
    @Override
    public BillEntity mapRow(ResultSet rs, int rowNum) throws SQLException {
        BillEntity bill = new BillEntity();
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
