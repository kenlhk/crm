package com.kenlhk.crm.dao;

import com.kenlhk.crm.entity.Customer;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class CustomerDAOImpl implements CustomerDAO{

    // inject the session factory
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Customer> getCustomers() {

        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // create a query sorted by last name
        Query<Customer> query = currentSession.createQuery("from Customer order by lastName", Customer.class);

        // execute query and get result list
        List<Customer> customers = query.getResultList();

        return customers;
    }

    @Override
    public Customer getCustomer(int customerID) {

        //get the current hibernate session
        Session session = sessionFactory.getCurrentSession();

        //retrieve the customer using id from database
        Customer customer = session.get(Customer.class, customerID);

        return customer;
    }

    @Override
    public void saveCustomer(Customer customer) {

        // get the current hibernate session
        Session session = sessionFactory.getCurrentSession();

        // save the customer
        System.out.println("saving customer");
        session.saveOrUpdate(customer);
    }

    @Override
    public void deleteCustomer(int customerID) {

        // get the current hibernate session
        Session session = sessionFactory.getCurrentSession();

        // retrieve the customer
        Customer customer = session.get(Customer.class, customerID);

        // delete the customer in database
        session.delete(customer);
    }
}
