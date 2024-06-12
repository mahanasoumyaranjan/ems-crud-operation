package com.employees.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.employees.model.Employee;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public void save(Employee employee) {
		String sql = "INSERT INTO employee (name, department, salary) VALUES (?, ?, ?)";
		jdbcTemplate.update(sql, employee.getName(), employee.getDepartment(), employee.getSalary());
	}

	@Override
	public void update(Employee employee) {
		String sql = "UPDATE employee SET name=?, department=?, salary=? WHERE id=?";
		jdbcTemplate.update(sql, employee.getName(), employee.getDepartment(), employee.getSalary(), employee.getId());
	}

	@Override
	public void delete(int id) {
		String sql = "DELETE FROM employee WHERE id=?";
		jdbcTemplate.update(sql, id);
	}

	@Override
	public Employee get(int id) {
		String sql = "SELECT * FROM employee WHERE id=?";
		return jdbcTemplate.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<>(Employee.class));
	}

	@Override
	public List<Employee> list() {
		String sql = "SELECT * FROM employee";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Employee.class));
	}

}
