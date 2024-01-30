package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

import com.example.demo.model.Employee;
import com.example.demo.repository.EmployeeRepository;
import com.example.demo.service.EmployeeService;
import com.example.demo.exception.ResourceNotFound;

@Controller
@RequestMapping("/index")
public class EmployeeController {

    private final EmployeeRepository employeeRepository;
    private final EmployeeService employeeService;

    @Autowired
    public EmployeeController(EmployeeRepository employeeRepository, EmployeeService employeeService) {
        this.employeeRepository = employeeRepository;
        this.employeeService = employeeService;
    }

    // Display index.jsp
    @GetMapping
    public String showIndexPage() {
        return "index";
    }

    // Get all employees and pass them to index.jsp
    @GetMapping("/employees")
    public ModelAndView getAllEmployees() {
        List<Employee> employees = employeeService.getAllEmployees();
        ModelAndView modelAndView = new ModelAndView("index");
        modelAndView.addObject("employees", employees);
        return modelAndView;
    }

    // Add a new employee
    @GetMapping("/add")
    public String addNewData() {
        // You might want to redirect to a form for adding a new employee
        return "redirect:/employeeForm";
    }

    // Save the new employee
    @PostMapping("/employees")
    public String createEmployee(@ModelAttribute Employee employee) {
        employeeRepository.save(employee);
        return "redirect:/index/employees";
    }

    // Get employee by ID
    @GetMapping("/employees/{id}")
    public String getEmployeeById(@PathVariable Long id, Model model) {
        Employee employee = employeeRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFound("Employee not exist with id :" + id));
        model.addAttribute("employee", employee);
        return "employeeDetails";
    }

    // Update employee - show edit form
    @GetMapping("/employees/edit/{id}")
    public String showEditForm(@PathVariable Long id, Model model) {
        Employee employee = employeeRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFound("Employee not exist with id :" + id));
        model.addAttribute("employee", employee);
        return "edit";
    }

    // Update employee - save changes
    @PostMapping("/edit/{id}")
    public String updateEmployee(@PathVariable Long id, @ModelAttribute Employee employeeDetails) {
        Employee employee = employeeRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFound("Employee not exist with id :" + id));

        employee.setFirstName(employeeDetails.getFirstName());
        employee.setLastName(employeeDetails.getLastName());
        employee.setEmailId(employeeDetails.getEmailId());

        employeeRepository.save(employee);
        return "redirect:/index/employees";
    }

    // Delete employee
    @GetMapping("/employees/delete/{id}")
    public String deleteEmployee(@PathVariable Long id) {
        Employee employee = employeeRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFound("Employee not exist with id :" + id));

        employeeRepository.delete(employee);
        return "redirect:/index/employees";
    }
}
