package com.hand.ssm.mapper;

import java.util.List;

import com.hand.ssm.dto.Address;
import com.hand.ssm.dto.Customer;

public interface CustomerMapper {
	
	public List<Customer> login(String firstName);
	public List<Customer> select(Customer cust);
    public void insert(Customer cust);
    public void delete(int custId);
    public void update(Customer cust);
    public Customer edit(int custId);
    public List<Address> site();
}
