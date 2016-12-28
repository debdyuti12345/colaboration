package colaboration.model;

import java.util.Set;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;
import colaboration.model.Blog;

@Entity
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int userId;
	//@NotEmpty(message="Username can't be empty")
	private String username;
	//@NotEmpty(message="Password can't be empty")
	private String password;
	//@NotEmpty(message="Name can't be empty")
	private String name;
	//@NotEmpty(message="Email can't be empty")
	private String email;
	private String location;
	
	
	public String getLocation() {
		return location;
	}





	public void setLocation(String location) {
		this.location = location;
	}
	private boolean enabled;
	private String role;
	
	@Transient
	private MultipartFile image;
	
	public User()
	{
		
	}
	
	
	
	
	
	public MultipartFile getImage() {
		return image;
	}





	public void setImage(MultipartFile image) {
		this.image = image;
	}





	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	

	
}


	/*@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int userId;
	private String username;
	private String password;
	private String name;
    private String email;
    private String profession;
    private String contactnumber;
	public String getContactnumber() {
		return contactnumber;
	}
	public void setContactnumber(String contactnumber) {
		this.contactnumber = contactnumber;
	}

	private String hobbies;

    
	private boolean enabled;
	private String role;
	
	@ElementCollection(targetClass=Blog.class)
	@OneToMany(mappedBy="user",fetch = FetchType.EAGER)
	private Set<Blog> blog;
	
	public Set<Blog> getBlog() {
		return blog;
	}
	public void setBlog(Set<Blog> blog) {
		this.blog = blog;
	}
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	public String getHobbies() {
		return hobbies;
	}
	public void setHobbies(String hobbies) {
		this.hobbies = hobbies;
	}
	
	
	@Transient
	private MultipartFile image;
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
		

}
*/