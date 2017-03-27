package com.hand.ssm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hand.ssm.dto.Address;
import com.hand.ssm.dto.Customer;
import com.hand.ssm.mapper.CustomerMapper;
import com.hand.ssm.service.CustomerService;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService {
	
	@Autowired
	private CustomerMapper custMapper;
	
	public List<Customer> login(String firstName) {
		List<Customer> user=custMapper.login(firstName);
		return user;
	}

	public List<Customer> select(Customer cust) {
		List<Customer> userList=custMapper.select(cust);
		return userList;
	}

	public void insert(Customer cust) {
		custMapper.insert(cust);
	}

	public void delete(int custId) {
		custMapper.delete(custId);
	}

	public void update(Customer cust) {
		custMapper.update(cust);
	}

	public Customer edit(int custId) {
		return custMapper.edit(custId);
	}

	public List<Address> site() {
		List<Address> site=custMapper.site();
		return site;
	}

}
