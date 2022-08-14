package KoadRestaurant.Dao;

import KoadRestaurant.Model.Entity.User;
import KoadRestaurant.Model.Entity.UserMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDao extends  BaseDao {

    public int AddUser(User user) {
        StringBuffer sql = new StringBuffer();
        sql.append("INSERT ");
        sql.append("INTO user ");
        sql.append("( ");
        sql.append(" email, ");
        sql.append(" password, ");
        sql.append(" name, ");
        sql.append(" address, ");
        sql.append(" phone ");
        sql.append(")");
        sql.append(" VALUES ");
        sql.append(" ( ");
        sql.append(" '"+ user.getEmail()  +"', ");
        sql.append(" '"+ user.getPassword()  +"', ");
        sql.append(" '"+ user.getName()  +"', ");
        sql.append(" '"+ user.getAddress()  +"', ");
        sql.append(" '"+ user.getPhone()  +"' ");
        sql.append(" ) ");


        int insert = _jdbcTemplate.update(sql.toString());
        return insert;
    }
    public int EditInfo(User user){
        String sql = "Update user set name = '" + user.getName() + "', password = '" + user.getPassword() + "'," +
                " address=' " + user.getAddress() + "',phone='" + user.getPhone() +  "' where id=" + user.getId();
        int edit = _jdbcTemplate.update(sql);
        return edit;
    }

    public User GetUserByAcc(User user) {
        String sql = "Select * from user Where email = '" + user.getEmail() + "' ";
        User result = _jdbcTemplate.queryForObject(sql, new UserMapper());
        return result;
    }

    public List<User> GetAllUserAccounts(){
        String sql = "Select * from user";
        List<User> listAccount = _jdbcTemplate.query(sql,new UserMapper());
        return listAccount;
    }
    public int DeleteAccountById(int id){
        String sql = "Delete from user Where id=" +id;
        int delete = _jdbcTemplate.update(sql);
        return delete;
    }


}
