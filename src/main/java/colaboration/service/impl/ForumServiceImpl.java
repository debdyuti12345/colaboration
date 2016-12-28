package colaboration.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import colaboration.dao.impl.ForumDAOImpl;
import colaboration.model.Forum;

@Service
public class ForumServiceImpl {
	@Autowired
	private ForumDAOImpl fdi;
	
	@Transactional
    public void addForum(Forum f) {
        this.fdi.addForum(f);
    }
	
	@Transactional
    public List<Forum> listForums() {
        return this.fdi.listForums();
    }
	
	@Transactional
    public Forum getForumById(int fId) {
        return this.fdi.getForumById(fId);
    }
	
	@Transactional
    public void removeForum(int fId) {
        this.fdi.removeForum(fId);
    }
}
