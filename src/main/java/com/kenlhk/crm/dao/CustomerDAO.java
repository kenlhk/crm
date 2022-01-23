package com.kenlhk.crm.dao;

import com.kenlhk.crm.entity.Customer;

import java.util.List;

public interface CustomerDAO {

    public List<Customer> getCustomers();

    public Customer getCustomer(int customerID);

    public void saveCustomer(Customer customer);

    public void deleteCustomer(int customerID);
}
