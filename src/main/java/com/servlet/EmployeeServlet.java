package com.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.EmployeeDao;
import com.dto.EmployeeDto;

/**
 * Servlet implementation class EmployeeServlet
 */
public class EmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EmployeeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			ArrayList<EmployeeDto> employees =  new EmployeeDao().getEmployeeList();
			request.setAttribute("employees", employees);
			request.getRequestDispatcher("/jsp/viewEmploy.jsp").forward(request, response);	
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		EmployeeDto employee = new EmployeeDto();
		employee.setName(request.getParameter("name"));
		employee.setAge(Integer.parseInt(request.getParameter("age")));
		employee.setMobileNo(request.getParameter("mobileNo"));
		employee.setMailId(request.getParameter("mailId"));
		EmployeeDao dao = new EmployeeDao();
		try {
			dao.saveEmployee(employee);
			request.setAttribute("addsuccess", "Employee Added Successfully");
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher("welcomePage.jsp");
		rd.forward(request, response);
	}

}
