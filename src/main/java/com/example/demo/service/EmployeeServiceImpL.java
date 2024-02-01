package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Employee;
import com.example.demo.repository.EmployeeRepository;

import net.bytebuddy.dynamic.DynamicType.Builder.FieldDefinition.Optional;

@Service
public class EmployeeServiceImpL implements EmployeeService {
	@Autowired
	private EmployeeRepository employeeRepository;

	@Override
	public List<Employee> getAllEmployees() {
		return employeeRepository.findAll();

	}

	@Override
	public Employee getEmployee() {
		Employee employee = new Employee(1, "Dhrupa", "Mistry", "dmistry512@gmail.com","1234567890");
		employeeRepository.save(employee);
		return employee;
	}
	
	@Override
    public Employee addEmployee(Employee employee) {
        return employeeRepository.save(employee);
    }


    @Override
    public Employee updateEmployee(Employee updatedEmployee, Long id) {
        java.util.Optional<Employee> optionalEmployee = employeeRepository.findById(id);

        if (optionalEmployee.isPresent()) {
            Employee existingEmployee = optionalEmployee.get();
            existingEmployee.setFirstName(updatedEmployee.getFirstName());
            existingEmployee.setLastName(updatedEmployee.getLastName());
            existingEmployee.setEmailId(updatedEmployee.getEmailId());

            return employeeRepository.save(existingEmployee);
        }

        return null; // Return null if the employee with the given id is not found
    }

    @Override
    public void deleteEmployee(Long id) {
        employeeRepository.deleteById(id);
    }

	

	@Override
	public Employee getEmployeeById(Long id) {
		// TODO Auto-generated method stub
		return employeeRepository.findById(id).get();
	}

	@Override
	public void addEmployee() {
		// TODO Auto-generated method stub
		
	}
}
