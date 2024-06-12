package com.employees.dao;

import java.util.List;

import com.employees.model.Employee;

public interface EmployeeDAO {
	void save(Employee employee);

	void update(Employee employee);

	void delete(int id);

	Employee get(int id);

	List<Employee> list();
}
