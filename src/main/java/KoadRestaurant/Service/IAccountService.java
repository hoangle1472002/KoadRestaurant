package KoadRestaurant.Service;

import KoadRestaurant.Model.Entity.User;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public interface IAccountService {
	public int AddAccount(User user);
	public int EditAccount(User user);
	public User CheckAcc(User user);
	public List<User> GetAllUserAccounts();
	public int DeleteAccountbyId(int id);
	public List<User> GetAccountByName(String name);
	public User GetUserByAcc(User user);
}
