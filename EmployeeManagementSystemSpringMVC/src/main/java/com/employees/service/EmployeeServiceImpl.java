package com.employees.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.employees.dao.EmployeeDAO;
import com.employees.model.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeDAO employeeDAO;

	@Override
	public void save(Employee employee) {
		employeeDAO.save(employee);
	}

	@Override
	public void update(Employee employee) {
		employeeDAO.update(employee);
	}

	@Override
	public void delete(int id) {
		employeeDAO.delete(id);
	}

	@Override
	public Employee get(int id) {
		return employeeDAO.get(id);
	}

	@Override
	public List<Employee> list() {
		return employeeDAO.list();
	}
}
