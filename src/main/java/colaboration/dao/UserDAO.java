package colaboration.dao;
import java.util.List;

import colaboration.model.*;

public interface UserDAO {
void addUser(User user);
	
	void updateUser(User user);
	
    User getUserById(int userid);

    List<User> listUsers();

    User getUserByusername(String username);
    
    void removeUser(int userid);
}
