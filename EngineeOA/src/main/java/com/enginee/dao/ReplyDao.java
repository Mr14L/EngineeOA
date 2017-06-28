package com.enginee.dao;

import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.enginee.model.Reply;
@Repository
public class ReplyDao extends BaseDao<Reply> {

	@SuppressWarnings("rawtypes")
	public Reply findByEmail(String email) {
		// TODO Auto-generated method stub
		String sql = "From Reply r where r.user.email = ?";
		Query query = this.getCurrentSession().createQuery(sql);
		query.setParameter(0, email);
		Reply reply = new Reply();
		if(query.getResultList()!=null){
			reply=(Reply) query.getResultList().get(0);
			return reply;
		}
		return null;
	}

}
