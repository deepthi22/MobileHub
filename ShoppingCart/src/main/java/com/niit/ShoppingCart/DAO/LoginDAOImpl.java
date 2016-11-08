package com.niit.ShoppingCart.DAO;



import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ShoppingCart.model.Login;

//this class implements the login DAO class

@Repository("loginDAO")
public class LoginDAOImpl implements LoginDAO {
	public List<Login> list1() {
		return null;
	}

	@Autowired // it connects to the login DAOImpl
	private SessionFactory sessionFactory;

	public LoginDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory; // it creates the object for the session
	}

	@Transactional // this annotation itself defines the scope of a single database transaction.
	
	public void save(Login user)  // to save the login 
	{
		sessionFactory.getCurrentSession().save(user);

	}

	@Transactional
	public void update(Login user) { // to update the user
		sessionFactory.getCurrentSession().update(user);

	}

	@Transactional
	public void delete(int id) { // to delete the user
		Login LoginToDelete = new Login();
		LoginToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(LoginToDelete);
	}

	@Transactional
	public List getAllLogins() { // to get the list of all the users
		Session session=sessionFactory.openSession();
		List listuser=session.createQuery("from Login").list();
		session.close();
		return listuser;
		}


	@Transactional
	public Login get(int id) {
		// sessionFactory.getCurrentSession().get(Login.class,id);
		String hql = "from Login where Id=" + "'" + id + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked") 
		List<Login> listLogin = query.list();
		if (listLogin != null && !listLogin.isEmpty()) {
			return listLogin.get(0);
		}
		return null;
	}
	@Transactional
	public Login getSingleLogin(int id) { // to get a single user at a time
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession(); // opens a new session
		Login user=(Login)session.load(Login.class, id);
		return user;
		}
	@Transactional
	public List<Login> list() {
		@SuppressWarnings("unchecked") // indicates that warnings should be suppressed in a annotated class
		List<Login> list = (List<Login>) sessionFactory.getCurrentSession()
				.createCriteria(Login.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return list;
	}
}
