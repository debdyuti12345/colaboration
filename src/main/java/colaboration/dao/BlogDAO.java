package colaboration.dao;

import java.util.List;

import colaboration.model.Blog;

public interface BlogDAO {
	
	public void addBlog(Blog b);
	public List<Blog> listBlogs();
	public Blog getBlogById(int blogId);
	public void removeBlog(int blogId);
	
}
