package colaboration.service;
import java.util.List;

import colaboration.model.*;
public interface UserService {
	
	void addUser(User user);
	
	void updateUser(User user);
	
    User getUserById(int userid);

    List<User> listUsers();

    User getUserByusername(String username);
    
    void removeUser(int userid);
}

