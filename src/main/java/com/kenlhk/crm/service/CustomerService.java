package com.kenlhk.crm.service;

import com.kenlhk.crm.entity.Customer;

import java.util.List;

public interface CustomerService {

    public List<Customer> getCustomers();

    public void saveCustomer(Customer customer);
}
