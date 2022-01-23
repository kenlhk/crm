package com.kenlhk.crm.controller;

import com.kenlhk.crm.entity.Customer;
import com.kenlhk.crm.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    // inject customer dao
    @Autowired
    private CustomerService customerService;

    @GetMapping("/list")
    public String listCustomers(Model model){

        // get customers from the service
        List<Customer> customers = customerService.getCustomers();

        // add customers to model
        model.addAttribute("customers", customers);

        return "list-customers";
    }

    @GetMapping("/formForAdd")
    public String showFormForAdd(Model model){

        Customer customer = new Customer();

        model.addAttribute("customer", customer);

        return "customer-form";
    }

    @PostMapping("/saveCustomer")
    public String saveCustomer(@ModelAttribute("customer") Customer customer){
        customerService.saveCustomer(customer);
        return "redirect:/customer/list";
    }

    @GetMapping("/formForUpdate")
    public String showFormForUpdate(@RequestParam int customerID, Model model){

        // get customer from the database
        Customer customer = customerService.getCustomer(customerID);

        // set customer to model attributes
        model.addAttribute("customer", customer);

        // send over to the update form
        return "customer-form";
    }

    @GetMapping("/delete")
    public String deleteCustomer(@RequestParam int customerID, Model model){

        customerService.deleteCustomer(customerID);

        return "redirect:/customer/list";
    }
}
