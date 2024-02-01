package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Employee;

public interface EmployeeService {

	List<Employee> getAllEmployees();

	Employee getEmployee();

	void addEmployee();
	
	Employee getEmployeeById(Long id);

	Employee addEmployee(Employee employee);

	Employee updateEmployee(Employee updatedEmployee, Long id);

	void deleteEmployee(Long id);


}
