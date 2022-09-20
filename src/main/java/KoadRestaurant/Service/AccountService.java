package KoadRestaurant.Service;

import KoadRestaurant.Dao.UserDao;
import KoadRestaurant.Model.Entity.User;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AccountService implements IAccountService{
    @Autowired
    UserDao usersDao = new UserDao();

    @Override
    public int AddAccount(User user) {
        user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));
        return usersDao.AddUser(user);
    }

    @Override
    public int EditAccount(User user) {
        user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));
        return usersDao.EditInfo(user);
    }


    @Override
    public List<User> GetAccountByName(String name) {
        List<User> listAcc= usersDao.GetAccountByName(name);
        if(listAcc == null)
            return null;
        return listAcc;
    }

    @Override
    public User GetUserByAcc(User user) {
        User check = usersDao.GetUserByAcc(user);
        if(check == null)
            return null;
        else return check;
    }


    @Override
    public User CheckAcc(User user) {
        String password = user.getPassword();
        user = usersDao.GetUserByAcc(user);
        if(user != null) {
            if(BCrypt.checkpw(password,user.getPassword()))
                return user;
            else
                return null;
        }
        return null;
    }

    @Override
    public List<User> GetAllUserAccounts() {
        return usersDao.GetAllUserAccounts();
    }

    @Override
    public int DeleteAccountbyId(int id) {
        return usersDao.DeleteAccountById(id);
    }
}
