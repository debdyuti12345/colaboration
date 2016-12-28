package colaboration.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;


import java.util.Date;

@Entity
public class Blog {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private int blogId;
	
private	String blogTitle;

private String blogcontent;
private String user;

private Date date;



public String getUser() {
	return user;
}

public void setUser(String user) {
	this.user = user;
}

public Date getDate() {
	return date;
}

public void setDate(Date date) {
	this.date = date;
}

private Date time;



public int getBlogId() {
	return blogId;
}

public void setBlogId(int blogId) {
	this.blogId = blogId;
}

public String getBlogTitle() {
	return blogTitle;
}

public void setBlogTitle(String blogTitle) {
	this.blogTitle = blogTitle;
}



public String getBlogcontent() {
	return blogcontent;
}

public void setBlogcontent(String blogcontent) {
	this.blogcontent = blogcontent;
}

public Date getTime() {
	return time;
}

public void setTime(Date time) {
	this.time = time;
}

}
