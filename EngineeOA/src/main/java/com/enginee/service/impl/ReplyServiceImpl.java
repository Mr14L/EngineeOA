package com.enginee.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

//import com.enginee.dao.ReplyDao;
import com.enginee.service.ReplyService;
@Service
public class ReplyServiceImpl implements ReplyService {
	/*@Autowired
	private ReplyDao replyDao;*/

	/*@Override
	@Transactional
	public List<Reply> listUser(List<User> userlist, Integer id) {
		// TODO Auto-generated method stub
		List<Reply> list = new ArrayList<Reply>();
		String sql = "From Reply r where r.task.id= "+id+"and r.user.email = ?";
		@SuppressWarnings("rawtypes")
		Query query = replyDao.getCurrentSession().createQuery(sql);
		for(User u:userlist){
			query.setParameter(0, u.getEmail());
			if(!query.getResultList().isEmpty()){
				list.add((Reply)query.getResultList().get(0));
			}else{
				list.add(new Reply());
			}
		}
		
		return list;
	}*/
}
