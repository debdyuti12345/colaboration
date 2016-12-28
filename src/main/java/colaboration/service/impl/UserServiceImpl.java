package colaboration.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import colaboration.dao.impl.*;
import colaboration.model.*;
import colaboration.service.*;
@Service
public class UserServiceImpl {
	@Autowired
	private UserDAOImpl udi;
	

	@Transactional
    public void addUser(User u) {
        this.udi.addUser(u);
    }
	
	@Transactional
    public void updateUser(User u) {
        this.udi.updateUser(u);
    }
	
	@Transactional
    public List<User> listUsers() {
        return this.udi.listUsers();
    }
	/*@Transactional
	public List<User> detailsUser(String username){
		return this.udi.detailsUser(username);
	}*/
	
	@Transactional
    public User getUserById(int userid) {
        return this.udi.getUserById(userid);
    }
	
	@Transactional
    public User getUserByusername(String username) {
        return this.udi.getUserByusername(username);
    }
	
	@Transactional
    public void removeUser(int userid) {
        this.udi.removeUser(userid);
    }

}