package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import com.example.demo.model.Employee;
import com.example.demo.service.EmployeeService;
import com.example.demo.exception.ResourceNotFound;

import java.util.List;

@RestController
@RequestMapping("/api/employees")
public class EmployeeRestController {

    private final EmployeeService employeeService;

    @Autowired
    public EmployeeRestController(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    @GetMapping
    public ResponseEntity<List<Employee>> getAllEmployees() {
        List<Employee> employees = employeeService.getAllEmployees();
        return new ResponseEntity<>(employees, HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<String> createEmployee(@RequestBody Employee employee) {
        employeeService.addEmployee(employee);
        return new ResponseEntity<>("Employee created successfully", HttpStatus.CREATED);
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> getEmployeeById(@PathVariable Long id) {
        try {
            Employee employee = employeeService.getEmployeeById(id);
            return new ResponseEntity<>(employee, HttpStatus.OK);
        } catch (ResourceNotFound ex) {
            return new ResponseEntity<>("Employee not found with id: " + id, HttpStatus.NOT_FOUND);
        }
    }


    @PutMapping("/update/{id}")
    public ResponseEntity<String> updateEmployee(@RequestBody Employee employeeDetails,@PathVariable ("id")Long id) {
        try {
        	System.err.println(id);
            Employee employee = employeeService.getEmployeeById(id);
            employee.setFirstName(employeeDetails.getFirstName());
            employee.setLastName(employeeDetails.getLastName());
            employee.setEmailId(employeeDetails.getEmailId());
            employee.setPhoneno(employeeDetails.getPhoneno());
            employeeService.updateEmployee(employeeService.getEmployeeById(id), id);
            return new ResponseEntity<>("Employee updated successfully", HttpStatus.OK);
        } catch (ResourceNotFound ex) {
            return new ResponseEntity<>("Employee not found with id: " + id, HttpStatus.NOT_FOUND);
        }
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<String> deleteEmployee(@PathVariable Long id) {
        try {
            Employee employee = employeeService.getEmployeeById(id);
            employeeService.deleteEmployee(id);
            return new ResponseEntity<>("Employee deleted successfully", HttpStatus.OK);
        } catch (ResourceNotFound ex) {
            return new ResponseEntity<>("Employee not found with id: " + id, HttpStatus.NOT_FOUND);
        }
    }

}
